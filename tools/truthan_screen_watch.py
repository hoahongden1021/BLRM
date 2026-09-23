#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import os
import re
import shutil
import socket
import subprocess
import sys
import threading
import time
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
RUNTIME_DIR = ROOT / "runtime" / "agent"
WATCH_DIR = RUNTIME_DIR / "screen_watch"
STATE_PATH = RUNTIME_DIR / "screen_state.json"
STATUS_PATH = WATCH_DIR / "status.json"
PID_PATH = WATCH_DIR / "watcher.pid"
STOP_PATH = WATCH_DIR / "stop.flag"
LOG_PATH = WATCH_DIR / "watcher.log"

DEFAULT_PORT = 27191
# Keep native stream coordinates by default so OCR boxes remain directly usable
# for adb input tap. Downscaling can be added later only with explicit coordinate
# remapping.
DEFAULT_MAX_SIZE = 0
REMOTE_SERVER = "/data/local/tmp/truthan-scrcpy-server.jar"
PACKAGE = "com.t4game"

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="strict")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="strict")


class WatchError(RuntimeError):
    pass


def _run(
    cmd: list[str],
    *,
    timeout: float = 30,
    check: bool = True,
) -> subprocess.CompletedProcess[str]:
    try:
        cp = subprocess.run(
            cmd,
            cwd=str(ROOT),
            text=True,
            capture_output=True,
            encoding="utf-8",
            errors="replace",
            timeout=timeout,
        )
    except FileNotFoundError as exc:
        raise WatchError(f"command not found: {cmd[0]}") from exc
    except subprocess.TimeoutExpired as exc:
        raise WatchError(f"command timed out: {' '.join(cmd)}") from exc

    if check and cp.returncode != 0:
        raise WatchError(
            f"command failed ({cp.returncode}): {' '.join(cmd)}\n"
            f"STDOUT:\n{cp.stdout}\nSTDERR:\n{cp.stderr}"
        )
    return cp


def _adb(*args: str, timeout: float = 30, check: bool = True) -> subprocess.CompletedProcess[str]:
    return _run(["adb", *args], timeout=timeout, check=check)


def _atomic_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(path.suffix + ".tmp")
    with tmp.open("w", encoding="utf-8", newline="\n") as f:
        json.dump(payload, f, ensure_ascii=True, indent=2)
        f.write("\n")
    os.replace(tmp, path)


def _read_json(path: Path) -> dict[str, Any] | None:
    try:
        with path.open("r", encoding="utf-8") as f:
            data = json.load(f)
        return data if isinstance(data, dict) else None
    except (OSError, json.JSONDecodeError):
        return None


def _log_tail(max_chars: int = 8000) -> str:
    try:
        text = LOG_PATH.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return ""
    if len(text) > max_chars:
        text = text[-max_chars:]
    return text.strip()


def _pid_alive(pid: int) -> bool:
    if pid <= 0:
        return False
    if os.name == "nt":
        cp = _run(
            ["tasklist", "/FI", f"PID eq {pid}", "/FO", "CSV", "/NH"],
            timeout=10,
            check=False,
        )
        return str(pid) in cp.stdout and "No tasks are running" not in cp.stdout
    try:
        os.kill(pid, 0)
        return True
    except OSError:
        return False


def _load_pid() -> int | None:
    try:
        return int(PID_PATH.read_text(encoding="ascii").strip())
    except (OSError, ValueError):
        return None


def _scrcpy_exe() -> Path | None:
    explicit = os.environ.get("SCRCPY_EXE")
    if explicit:
        p = Path(explicit).expanduser().resolve()
        if p.exists():
            return p

    found = shutil.which("scrcpy")
    if found:
        return Path(found).resolve()

    # WinGet portable packages are not always added to the current shell PATH
    # immediately. Discover the official Genymobile.scrcpy package directly.
    local_appdata = os.environ.get("LOCALAPPDATA")
    if local_appdata:
        base = Path(local_appdata)

        # WinGet links directory (when an alias/link is created).
        for candidate in (
            base / "Microsoft" / "WinGet" / "Links" / "scrcpy.exe",
            base / "Microsoft" / "WindowsApps" / "scrcpy.exe",
        ):
            if candidate.exists():
                return candidate.resolve()

        packages = base / "Microsoft" / "WinGet" / "Packages"
        if packages.exists():
            candidates = sorted(
                (
                    p
                    for p in packages.glob("Genymobile.scrcpy_*")
                    for p in p.rglob("scrcpy.exe")
                    if p.is_file()
                ),
                key=lambda p: str(p).lower(),
            )
            if candidates:
                return candidates[-1].resolve()

    return None


def _scrcpy_version(exe: Path) -> str:
    cp = _run([str(exe), "--version"], timeout=15)
    text = cp.stdout + "\n" + cp.stderr
    m = re.search(r"(?im)^scrcpy\s+([0-9]+(?:\.[0-9]+)+(?:[-+._a-z0-9]*)?)", text)
    if not m:
        raise WatchError(f"could not parse scrcpy version from:\n{text}")
    return m.group(1)


def _scrcpy_server(exe: Path) -> Path | None:
    explicit = os.environ.get("SCRCPY_SERVER_PATH")
    if explicit:
        p = Path(explicit).expanduser().resolve()
        if p.exists():
            return p

    base = exe.parent
    for name in ("scrcpy-server", "scrcpy-server.jar"):
        p = base / name
        if p.exists() and p.is_file():
            return p.resolve()

    candidates = [
        p for p in base.glob("scrcpy-server*")
        if p.is_file() and p.suffix.lower() != ".exe"
    ]
    if candidates:
        return sorted(candidates, key=lambda p: p.name)[-1].resolve()
    return None


def _dependency_info() -> dict[str, Any]:
    out: dict[str, Any] = {}
    try:
        import av  # type: ignore
        out["av"] = {"ok": True, "version": getattr(av, "__version__", None)}
    except Exception as exc:
        out["av"] = {"ok": False, "error": f"{type(exc).__name__}: {exc}"}

    try:
        import rapidocr  # type: ignore
        out["rapidocr"] = {
            "ok": True,
            "version": getattr(rapidocr, "__version__", None),
        }
    except Exception as exc:
        out["rapidocr"] = {"ok": False, "error": f"{type(exc).__name__}: {exc}"}

    try:
        import numpy as np  # type: ignore
        out["numpy"] = {"ok": True, "version": np.__version__}
    except Exception as exc:
        out["numpy"] = {"ok": False, "error": f"{type(exc).__name__}: {exc}"}
    return out


def doctor() -> dict[str, Any]:
    adb_state = None
    adb_error = None
    try:
        adb_state = _adb("get-state").stdout.strip()
    except Exception as exc:
        adb_error = f"{type(exc).__name__}: {exc}"

    exe = _scrcpy_exe()
    version = None
    version_error = None
    server = None
    if exe:
        try:
            version = _scrcpy_version(exe)
            server = _scrcpy_server(exe)
        except Exception as exc:
            version_error = f"{type(exc).__name__}: {exc}"

    deps = _dependency_info()
    ready = (
        adb_state == "device"
        and exe is not None
        and version is not None
        and server is not None
        and all(v.get("ok") for v in deps.values())
    )
    return {
        "ready": bool(ready),
        "adb_state": adb_state,
        "adb_error": adb_error,
        "scrcpy_exe": str(exe) if exe else None,
        "scrcpy_version": version,
        "scrcpy_version_error": version_error,
        "scrcpy_server": str(server) if server else None,
        "dependencies": deps,
        "state_path": str(STATE_PATH),
    }


def _kill_old_raw_scrcpy_servers() -> list[int]:
    """Kill only scrcpy Server processes whose args contain raw_stream=true."""
    cp = _adb("shell", "ps", "-A", "-o", "PID,ARGS", check=False)
    killed: list[int] = []
    for line in cp.stdout.splitlines():
        if "com.genymobile.scrcpy.Server" not in line or "raw_stream=true" not in line:
            continue
        m = re.match(r"\s*(\d+)\s+", line)
        if not m:
            continue
        pid = int(m.group(1))
        _adb("shell", "kill", "-9", str(pid), check=False)
        killed.append(pid)
    return killed


def _launch_scrcpy_server(
    server_path: Path,
    version: str,
    *,
    port: int,
    max_size: int,
) -> tuple[subprocess.Popen[bytes], socket.socket]:
    _kill_old_raw_scrcpy_servers()

    _adb("push", str(server_path), REMOTE_SERVER, timeout=60)
    _adb("forward", "--remove", f"tcp:{port}", check=False)
    _adb("forward", f"tcp:{port}", "localabstract:scrcpy")

    # IMPORTANT:
    # With adb forward, a host TCP connect may succeed before the device-side
    # localabstract:scrcpy listener exists. scrcpy normally uses a one-byte
    # dummy handshake specifically to detect that race. raw_stream=true would
    # disable that byte, so configure the raw H.264 stream explicitly while
    # keeping send_dummy_byte=true.
    cmd = [
        "adb",
        "shell",
        f"CLASSPATH={REMOTE_SERVER}",
        "app_process",
        "/",
        "com.genymobile.scrcpy.Server",
        version,
        "tunnel_forward=true",
        "video=true",
        "video_codec=h264",
        "audio=false",
        "control=false",
        "cleanup=false",
        "send_device_meta=false",
        "send_frame_meta=false",
        "send_stream_meta=false",
        "send_dummy_byte=true",
    ]
    if max_size > 0:
        cmd.append(f"max_size={max_size}")

    WATCH_DIR.mkdir(parents=True, exist_ok=True)
    log_fp = LOG_PATH.open("ab", buffering=0)
    try:
        proc = subprocess.Popen(
            cmd,
            cwd=str(ROOT),
            stdout=log_fp,
            stderr=log_fp,
        )
    finally:
        log_fp.close()

    deadline = time.time() + 10.0
    last_error: Exception | None = None
    while time.time() < deadline:
        if proc.poll() is not None:
            tail = _log_tail()
            raise WatchError(
                f"scrcpy server exited early with code {proc.returncode}; "
                f"log_tail={tail!r}"
            )

        sock: socket.socket | None = None
        try:
            sock = socket.create_connection(("127.0.0.1", port), timeout=0.8)
            sock.settimeout(1.5)
            dummy = sock.recv(1)
            if len(dummy) != 1:
                raise WatchError("scrcpy dummy handshake socket closed")
            # The dummy byte is transport metadata, not H.264 payload.
            sock.settimeout(0.5)
            return proc, sock
        except (OSError, WatchError) as exc:
            last_error = exc
            if sock is not None:
                try:
                    sock.close()
                except OSError:
                    pass
            time.sleep(0.15)

    try:
        proc.terminate()
    except Exception:
        pass
    raise WatchError(
        f"could not establish scrcpy video handshake: {last_error}; "
        f"log_tail={_log_tail()!r}"
    )

def _frame_signature(frame: Any, stride: int = 24) -> Any:
    import numpy as np  # type: ignore

    sample = frame[::stride, ::stride]
    # BGR -> simple luma approximation, uint8 output.
    gray = (
        sample[..., 0].astype(np.uint16)
        + sample[..., 1].astype(np.uint16) * 2
        + sample[..., 2].astype(np.uint16)
    ) // 4
    return gray.astype(np.uint8)


def _signature_delta(a: Any, b: Any) -> float:
    import numpy as np  # type: ignore

    if a is None or b is None or a.shape != b.shape:
        return 255.0
    return float(
        np.mean(
            np.abs(a.astype(np.int16) - b.astype(np.int16))
        )
    )


def _item_center(box: Any) -> list[float] | None:
    if not isinstance(box, list) or len(box) != 4:
        return None
    try:
        xs = [float(p[0]) for p in box]
        ys = [float(p[1]) for p in box]
    except (TypeError, ValueError, IndexError):
        return None
    return [sum(xs) / 4.0, sum(ys) / 4.0]


class SharedFrame:
    def __init__(self) -> None:
        self.lock = threading.Lock()
        self.frame: Any = None
        self.frame_id = 0
        self.frame_ts = 0.0
        self.frames_decoded = 0
        self.decode_error: str | None = None
        self.done = False

    def put(self, frame: Any) -> None:
        with self.lock:
            self.frame = frame
            self.frame_id += 1
            self.frame_ts = time.time()
            self.frames_decoded += 1

    def snapshot(self) -> tuple[Any, int, float]:
        with self.lock:
            return self.frame, self.frame_id, self.frame_ts


def _decode_loop(sock: socket.socket, shared: SharedFrame) -> None:
    import av  # type: ignore

    codec = av.CodecContext.create("h264", "r")
    try:
        while not STOP_PATH.exists():
            try:
                chunk = sock.recv(262144)
            except socket.timeout:
                continue
            if not chunk:
                raise WatchError(
                    "scrcpy raw video socket closed; "
                    f"log_tail={_log_tail()!r}"
                )
            for packet in codec.parse(chunk):
                for frame in codec.decode(packet):
                    shared.put(frame.to_ndarray(format="bgr24"))
    except Exception as exc:
        shared.decode_error = f"{type(exc).__name__}: {exc}"
    finally:
        shared.done = True


def _ocr_loop(
    shared: SharedFrame,
    *,
    ocr_fps: float,
    change_threshold: float,
    max_idle_seconds: float,
) -> None:
    from rapidocr import RapidOCR  # type: ignore
    from truthan_rapidocr import _extract, classify_screen

    engine = RapidOCR()
    min_interval = 1.0 / max(ocr_fps, 0.1)
    last_ocr_start = 0.0
    last_ocr_done = 0.0
    last_sig: Any = None
    last_frame_id = -1

    while not STOP_PATH.exists():
        now = time.time()
        if now - last_ocr_start < min_interval:
            time.sleep(0.03)
            continue

        frame, frame_id, frame_ts = shared.snapshot()
        if frame is None or frame_id == last_frame_id:
            if shared.done:
                return
            time.sleep(0.03)
            continue

        sig = _frame_signature(frame)
        delta = _signature_delta(sig, last_sig)
        idle_due = (now - last_ocr_done) >= max_idle_seconds
        if last_sig is not None and delta < change_threshold and not idle_due:
            last_frame_id = frame_id
            time.sleep(0.03)
            continue

        last_ocr_start = time.time()
        result = engine(frame)
        ocr_elapsed = time.time() - last_ocr_start
        txts, scores, boxes, rapid_elapsed, rapid_elapsed_list = _extract(result)
        classification = classify_screen(txts)

        items = []
        for text, score, box in zip(txts, scores, boxes):
            items.append({
                "text": text,
                "score": score,
                "box": box,
                "center": _item_center(box),
            })

        payload = {
            "schema_version": 1,
            "source": "scrcpy_raw_h264",
            "watcher_pid": os.getpid(),
            "timestamp_epoch": time.time(),
            "frame_id": frame_id,
            "frame_timestamp_epoch": frame_ts,
            "frame_age_ms": max(0.0, (time.time() - frame_ts) * 1000.0),
            "frame_size": [int(frame.shape[1]), int(frame.shape[0])],
            "screen_change_score": delta,
            "ocr_wall_seconds": ocr_elapsed,
            "rapidocr_elapse": rapid_elapsed,
            "rapidocr_elapse_list": rapid_elapsed_list,
            "item_count": len(items),
            "classification": classification,
            "items": items,
        }
        _atomic_json(STATE_PATH, payload)

        last_sig = sig
        last_frame_id = frame_id
        last_ocr_done = time.time()


def _write_status(
    status: str,
    *,
    port: int,
    extra: dict[str, Any] | None = None,
) -> None:
    payload: dict[str, Any] = {
        "status": status,
        "pid": os.getpid(),
        "timestamp_epoch": time.time(),
        "port": port,
        "state_path": str(STATE_PATH),
        "log_path": str(LOG_PATH),
    }
    if extra:
        payload.update(extra)
    _atomic_json(STATUS_PATH, payload)


def worker(args: argparse.Namespace) -> int:
    info = doctor()
    if not info["ready"]:
        raise WatchError(
            "screen watcher prerequisites are not ready: "
            + json.dumps(info, ensure_ascii=True)
        )

    exe = Path(str(info["scrcpy_exe"]))
    server = Path(str(info["scrcpy_server"]))
    version = str(info["scrcpy_version"])

    WATCH_DIR.mkdir(parents=True, exist_ok=True)
    STOP_PATH.unlink(missing_ok=True)
    PID_PATH.write_text(str(os.getpid()), encoding="ascii")

    server_proc: subprocess.Popen[bytes] | None = None
    sock: socket.socket | None = None
    shared = SharedFrame()
    decoder: threading.Thread | None = None
    ocr_thread: threading.Thread | None = None

    try:
        _write_status(
            "starting",
            port=args.port,
            extra={
                "scrcpy_exe": str(exe),
                "scrcpy_server": str(server),
                "scrcpy_version": version,
            },
        )

        server_proc, sock = _launch_scrcpy_server(
            server,
            version,
            port=args.port,
            max_size=args.max_size,
        )

        decoder = threading.Thread(
            target=_decode_loop,
            args=(sock, shared),
            name="truthan-screen-decode",
            daemon=True,
        )
        ocr_thread = threading.Thread(
            target=_ocr_loop,
            args=(shared,),
            kwargs={
                "ocr_fps": args.ocr_fps,
                "change_threshold": args.change_threshold,
                "max_idle_seconds": args.max_idle_seconds,
            },
            name="truthan-screen-ocr",
            daemon=True,
        )
        decoder.start()
        ocr_thread.start()

        _write_status(
            "running",
            port=args.port,
            extra={
                "scrcpy_version": version,
                "max_size": args.max_size,
                "ocr_fps": args.ocr_fps,
                "change_threshold": args.change_threshold,
            },
        )

        while not STOP_PATH.exists():
            if shared.decode_error:
                raise WatchError(shared.decode_error)
            if server_proc.poll() is not None:
                raise WatchError(
                    f"scrcpy server exited with code {server_proc.returncode}"
                )
            _write_status(
                "running",
                port=args.port,
                extra={
                    "scrcpy_version": version,
                    "frames_decoded": shared.frames_decoded,
                    "last_frame_timestamp_epoch": shared.frame_ts,
                    "screen_state_exists": STATE_PATH.exists(),
                },
            )
            time.sleep(1.0)

        _write_status("stopping", port=args.port)
        return 0
    except Exception as exc:
        _write_status(
            "error",
            port=args.port,
            extra={"error": f"{type(exc).__name__}: {exc}"},
        )
        raise
    finally:
        STOP_PATH.touch(exist_ok=True)
        if sock is not None:
            try:
                sock.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass
            try:
                sock.close()
            except OSError:
                pass
        if server_proc is not None and server_proc.poll() is None:
            try:
                server_proc.terminate()
                server_proc.wait(timeout=2)
            except Exception:
                try:
                    server_proc.kill()
                except Exception:
                    pass
        _adb("forward", "--remove", f"tcp:{args.port}", check=False)
        _kill_old_raw_scrcpy_servers()
        _adb("shell", "rm", "-f", REMOTE_SERVER, check=False)
        try:
            PID_PATH.unlink(missing_ok=True)
        except OSError:
            pass


def _force_stop_pid(pid: int) -> None:
    if not _pid_alive(pid):
        return
    if os.name == "nt":
        _run(["taskkill", "/PID", str(pid), "/T", "/F"], timeout=15, check=False)
    else:
        try:
            os.kill(pid, 15)
        except OSError:
            pass


def stop_watcher(wait_seconds: float = 5.0) -> dict[str, Any]:
    pid = _load_pid()
    meta = _read_json(STATUS_PATH) or {}
    port = int(meta.get("port") or DEFAULT_PORT)

    if not pid or not _pid_alive(pid):
        PID_PATH.unlink(missing_ok=True)
        _adb("forward", "--remove", f"tcp:{port}", check=False)
        killed = _kill_old_raw_scrcpy_servers()
        return {
            "stopped": False,
            "reason": "not_running",
            "cleanup_port": port,
            "killed_raw_server_pids": killed,
        }

    STOP_PATH.parent.mkdir(parents=True, exist_ok=True)
    STOP_PATH.touch()
    deadline = time.time() + wait_seconds
    while time.time() < deadline and _pid_alive(pid):
        time.sleep(0.15)

    forced = False
    if _pid_alive(pid):
        forced = True
        _force_stop_pid(pid)

    # Best-effort cleanup even after a forced watcher termination.
    _adb("forward", "--remove", f"tcp:{port}", check=False)
    killed = _kill_old_raw_scrcpy_servers()
    _adb("shell", "rm", "-f", REMOTE_SERVER, check=False)

    PID_PATH.unlink(missing_ok=True)
    return {
        "stopped": True,
        "pid": pid,
        "forced": forced,
        "cleanup_port": port,
        "killed_raw_server_pids": killed,
    }


def start_watcher(args: argparse.Namespace) -> dict[str, Any]:
    old = stop_watcher(wait_seconds=3.0)
    WATCH_DIR.mkdir(parents=True, exist_ok=True)
    STOP_PATH.unlink(missing_ok=True)
    try:
        STATE_PATH.unlink(missing_ok=True)
    except OSError:
        pass
    try:
        LOG_PATH.write_text("", encoding="utf-8")
    except OSError:
        pass

    cmd = [
        sys.executable,
        str(Path(__file__).resolve()),
        "_worker",
        "--port",
        str(args.port),
        "--max-size",
        str(args.max_size),
        "--ocr-fps",
        str(args.ocr_fps),
        "--change-threshold",
        str(args.change_threshold),
        "--max-idle-seconds",
        str(args.max_idle_seconds),
    ]

    log_fp = LOG_PATH.open("ab", buffering=0)
    kwargs: dict[str, Any] = {
        "cwd": str(ROOT),
        "stdout": log_fp,
        "stderr": log_fp,
    }
    if os.name == "nt":
        kwargs["creationflags"] = (
            subprocess.CREATE_NEW_PROCESS_GROUP | subprocess.DETACHED_PROCESS
        )

    try:
        proc = subprocess.Popen(cmd, **kwargs)
    finally:
        log_fp.close()

    PID_PATH.write_text(str(proc.pid), encoding="ascii")

    deadline = time.time() + 25.0
    last_status = None
    while time.time() < deadline:
        last_status = _read_json(STATUS_PATH)
        if last_status and last_status.get("pid") == proc.pid:
            if last_status.get("status") == "running":
                frames = int(last_status.get("frames_decoded") or 0)
                state_exists = bool(last_status.get("screen_state_exists"))
                if frames > 0 and state_exists:
                    return {
                        "started": True,
                        "pid": proc.pid,
                        "replaced_previous": old,
                        "status": last_status,
                    }
            if last_status.get("status") == "error":
                raise WatchError(
                    "watcher failed to start: "
                    + json.dumps(last_status, ensure_ascii=True)
                    + f"; log_tail={_log_tail()!r}"
                )
        if proc.poll() is not None:
            raise WatchError(
                f"watcher process exited early ({proc.returncode}); "
                f"log_tail={_log_tail()!r}"
            )
        time.sleep(0.2)

    raise WatchError(
        "watcher did not decode a frame and publish screen_state in time; "
        f"last_status={last_status}; log_tail={_log_tail()!r}"
    )


def watcher_status() -> dict[str, Any]:
    pid = _load_pid()
    meta = _read_json(STATUS_PATH)
    state = _read_json(STATE_PATH)
    return {
        "running": bool(pid and _pid_alive(pid)),
        "pid": pid,
        "status": meta,
        "screen_state": state,
    }


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Near-realtime Tru Than screen watcher using scrcpy raw H.264 + RapidOCR."
    )
    sub = p.add_subparsers(dest="command", required=True)

    sub.add_parser("doctor")
    sub.add_parser("status")
    sub.add_parser("stop")

    def add_runtime_args(sp: argparse.ArgumentParser) -> None:
        sp.add_argument("--port", type=int, default=DEFAULT_PORT)
        sp.add_argument("--max-size", type=int, default=DEFAULT_MAX_SIZE)
        sp.add_argument("--ocr-fps", type=float, default=2.0)
        sp.add_argument("--change-threshold", type=float, default=4.0)
        sp.add_argument("--max-idle-seconds", type=float, default=5.0)

    add_runtime_args(sub.add_parser("start"))
    add_runtime_args(sub.add_parser("_worker"))
    return p


def main() -> int:
    args = build_parser().parse_args()
    try:
        if args.command == "doctor":
            print(json.dumps(doctor(), ensure_ascii=False, indent=2))
        elif args.command == "start":
            print(json.dumps(start_watcher(args), ensure_ascii=False, indent=2))
        elif args.command == "status":
            print(json.dumps(watcher_status(), ensure_ascii=False, indent=2))
        elif args.command == "stop":
            print(json.dumps(stop_watcher(), ensure_ascii=False, indent=2))
        elif args.command == "_worker":
            return worker(args)
        else:
            raise WatchError(f"unknown command: {args.command}")
        return 0
    except Exception as exc:
        print(
            json.dumps(
                {"ok": False, "error": f"{type(exc).__name__}: {exc}"},
                ensure_ascii=False,
                indent=2,
            ),
            file=sys.stderr,
        )
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
