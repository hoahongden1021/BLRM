#!/usr/bin/env python3
# TruThan GUI/Vision bridge
# GPT-OSS/OpenCode uses this CLI through its bash tool.
# Qwen3-VL is used only as the vision backend.

from __future__ import annotations

import argparse
import base64
import json
import os
import re
import socket
import struct
import subprocess
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path
from typing import Any

PACKAGE = os.environ.get("TRUTHAN_PACKAGE", "com.t4game")
ACTIVITY = os.environ.get(
    "TRUTHAN_ACTIVITY",
    "j2ab.android.app.J2ABMIDletActivity",
)
VISION_MODEL = os.environ.get("TRUTHAN_VISION_MODEL", "qwen3-vl-8k:latest")
OLLAMA_URL = os.environ.get("OLLAMA_URL", "http://127.0.0.1:11434").rstrip("/")
ROOT = Path(__file__).resolve().parents[1]
SERVER_DIR = ROOT / "server"
LOCAL_SERVER_PORTS = (1888, 8089, 19000, 2888, 29000)
AGENT_RUNTIME_DIR = ROOT / "runtime" / "agent"
SCREENSHOT_DIR = AGENT_RUNTIME_DIR / "screenshots"
DEFAULT_SCREENSHOT = SCREENSHOT_DIR / "manual.png"
LAST_VISION = AGENT_RUNTIME_DIR / "last_vision.json"
REMOTE_SCREENSHOT = "/sdcard/__truthan_agent.png"

DANGEROUS_TARGET_WORDS = {
    "delete", "remove", "uninstall", "purchase", "buy", "pay",
    "充值", "购买", "支付", "删除", "卸载", "清除数据", "重置",
}

OBSERVE_SCHEMA = {
    "type": "object",
    "properties": {
        "screen_summary": {"type": "string"},
        "visible_text": {
            "type": "array",
            "items": {"type": "string"}
        },
        "interactive_elements": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "label": {"type": "string"},
                    "kind": {"type": "string"},
                    "center_norm": {
                        "type": "array",
                        "items": {"type": "integer"},
                        "minItems": 2,
                        "maxItems": 2
                    },
                    "bbox_norm": {
                        "type": "array",
                        "items": {"type": "integer"},
                        "minItems": 4,
                        "maxItems": 4
                    },
                    "confidence": {"type": "number"}
                },
                "required": [
                    "label", "kind", "center_norm", "bbox_norm", "confidence"
                ]
            }
        },
        "dialog": {"type": "string"},
        "notes": {"type": "string"}
    },
    "required": [
        "screen_summary", "visible_text", "interactive_elements",
        "dialog", "notes"
    ]
}

LOCATE_SCHEMA = {
    "type": "object",
    "properties": {
        "found": {"type": "boolean"},
        "target": {"type": "string"},
        "matched_label": {"type": "string"},
        "center_norm": {
            "type": "array",
            "items": {"type": "integer"},
            "minItems": 2,
            "maxItems": 2
        },
        "bbox_norm": {
            "type": "array",
            "items": {"type": "integer"},
            "minItems": 4,
            "maxItems": 4
        },
        "confidence": {"type": "number"},
        "reason": {"type": "string"}
    },
    "required": [
        "found", "target", "matched_label", "center_norm",
        "bbox_norm", "confidence", "reason"
    ]
}


class ToolError(RuntimeError):
    pass


def run(cmd: list[str], timeout: int = 120, check: bool = True) -> subprocess.CompletedProcess:
    try:
        cp = subprocess.run(
            cmd,
            text=True,
            capture_output=True,
            timeout=timeout,
            encoding="utf-8",
            errors="replace",
        )
    except FileNotFoundError:
        raise ToolError(f"Command not found: {cmd[0]}")
    except subprocess.TimeoutExpired:
        raise ToolError(f"Timed out: {' '.join(cmd)}")

    if check and cp.returncode != 0:
        raise ToolError(
            f"Command failed ({cp.returncode}): {' '.join(cmd)}\n"
            f"STDOUT:\n{cp.stdout}\nSTDERR:\n{cp.stderr}"
        )
    return cp


def adb(*args: str, timeout: int = 120, check: bool = True) -> subprocess.CompletedProcess:
    return run(["adb", *args], timeout=timeout, check=check)


def png_size(path: Path) -> tuple[int, int]:
    data = path.read_bytes()[:24]
    if len(data) < 24 or data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ToolError(f"Not a valid PNG: {path}")
    width, height = struct.unpack(">II", data[16:24])
    return width, height


def capture(path: Path = DEFAULT_SCREENSHOT) -> Path:
    path = path.resolve()
    path.parent.mkdir(parents=True, exist_ok=True)
    adb("shell", "screencap", "-p", REMOTE_SCREENSHOT)
    try:
        adb("pull", REMOTE_SCREENSHOT, str(path))
    finally:
        # The device-side capture is only a transport file; never leave it behind.
        adb("shell", "rm", "-f", REMOTE_SCREENSHOT, check=False)
    if not path.exists() or path.stat().st_size <= 0:
        raise ToolError("Screenshot pull produced an empty/missing file.")
    return path


def capture_transient() -> Path:
    SCREENSHOT_DIR.mkdir(parents=True, exist_ok=True)
    path = SCREENSHOT_DIR / f"tmp_{time.time_ns()}.png"
    return capture(path)


def cleanup_transient(path: Path | None) -> None:
    if path is None:
        return
    try:
        resolved = path.resolve()
        base = SCREENSHOT_DIR.resolve()
        if resolved.parent == base and resolved.name.startswith("tmp_"):
            resolved.unlink(missing_ok=True)
    except OSError:
        pass


def current_focus() -> dict[str, Any]:
    cp = adb("shell", "dumpsys", "window")
    lines = []
    for line in cp.stdout.splitlines():
        if "mCurrentFocus=" in line or "mFocusedApp=" in line:
            lines.append(line.strip())
    joined = "\n".join(lines)
    return {
        "lines": lines,
        "truthan_foreground": PACKAGE in joined,
    }


def _port_open(port: int, timeout: float = 0.20) -> bool:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timeout)
        return s.connect_ex(("127.0.0.1", int(port))) == 0


def _local_server_path() -> Path:
    preferred = SERVER_DIR / "main.py"
    if preferred.exists():
        return preferred

    candidates = sorted(
        SERVER_DIR.glob("truthan_local_server_v*.py"),
        key=lambda p: p.name,
        reverse=True,
    )
    if not candidates:
        raise ToolError(f"Local Tru Than server not found under: {SERVER_DIR}")
    return candidates[0]


def _server_port_state() -> dict[int, bool]:
    return {port: _port_open(port) for port in LOCAL_SERVER_PORTS}


def _stop_existing_local_servers(wait_seconds: float = 5.0) -> list[int]:
    """Stop old Tru Than local-server Python processes before a fresh test."""
    if os.name != "nt":
        return []

    server_names = sorted(
        {p.name for p in SERVER_DIR.glob("truthan_local_server_v*.py")}
    )
    if not server_names:
        return []

    quoted_names = ",".join(
        "'" + name.replace("'", "''") + "'" for name in server_names
    )
    ps = (
        f"$names=@({quoted_names});"
        "$ids=@();"
        "Get-CimInstance Win32_Process | ForEach-Object {"
        "  $p=$_;"
        "  if($p.Name -notmatch '^(python|pythonw|py)(\\.exe)?$'){ return };"
        "  if(-not $p.CommandLine){ return };"
        "  foreach($n in $names){"
        "    if($p.CommandLine -like ('*'+$n+'*')){"
        "      $ids += [int]$p.ProcessId;"
        "      break"
        "    }"
        "  }"
        "};"
        "$ids=@($ids | Sort-Object -Unique);"
        "foreach($procId in $ids){"
        "  Stop-Process -Id $procId -Force -ErrorAction SilentlyContinue"
        "};"
        "$ids"
    )
    cp = run(
        ["powershell.exe", "-NoLogo", "-NoProfile", "-Command", ps],
        timeout=30,
        check=False,
    )
    if cp.returncode != 0:
        raise ToolError(
            "Failed while stopping old Tru Than server process(es).\n"
            f"STDOUT:\n{cp.stdout}\nSTDERR:\n{cp.stderr}"
        )

    stopped = []
    for line in cp.stdout.splitlines():
        line = line.strip()
        if line.isdigit():
            stopped.append(int(line))

    deadline = time.time() + wait_seconds
    ports = _server_port_state()
    while time.time() < deadline and any(ports.values()):
        time.sleep(0.20)
        ports = _server_port_state()

    if any(ports.values()):
        raise ToolError(
            "Required Tru Than port(s) are still occupied after stopping known "
            f"old server process(es). stopped_pids={stopped} ports={ports}"
        )
    return stopped


def restart_local_server(wait_seconds: float = 8.0) -> dict[str, Any]:
    """Always stop the old local server and start a fresh server process."""
    before = _server_port_state()
    stopped = _stop_existing_local_servers()

    server = _local_server_path()
    kwargs: dict[str, Any] = {
        "cwd": str(server.parent),
        "env": os.environ.copy(),
    }
    if os.name == "nt":
        kwargs["creationflags"] = subprocess.CREATE_NEW_CONSOLE

    try:
        proc = subprocess.Popen(
            [sys.executable, "-u", str(server)],
            **kwargs,
        )
    except OSError as exc:
        raise ToolError(f"Failed to start local server {server}: {exc}") from exc

    deadline = time.time() + wait_seconds
    while time.time() < deadline and not _port_open(19000):
        if proc.poll() is not None:
            raise ToolError(
                f"Local server exited early with code {proc.returncode}: {server}"
            )
        time.sleep(0.25)

    after = _server_port_state()
    if not all(after.values()):
        raise ToolError(
            f"Fresh local server did not become ready within {wait_seconds:.1f}s. "
            f"server={server} ports={after}"
        )

    return {
        "restarted": True,
        "server": str(server),
        "stopped_pids": stopped,
        "pid": proc.pid,
        "ports_before": before,
        "ports": after,
    }


def ensure_adb_reverse() -> dict[str, str]:
    """Recreate all local TCP reverse rules required by the Tru Than client."""
    result: dict[str, str] = {}
    for port in LOCAL_SERVER_PORTS:
        adb("reverse", "--remove", f"tcp:{port}", check=False)
        cp = adb("reverse", f"tcp:{port}", f"tcp:{port}")
        result[str(port)] = cp.stdout.strip() or "ok"
    return result


def cleanup_legacy_agent_files() -> None:
    for legacy in (ROOT / ".agent_screen.png", ROOT / ".agent_vision.json"):
        try:
            legacy.unlink(missing_ok=True)
        except OSError:
            pass


def prepare_local_runtime() -> dict[str, Any]:
    # Remove files produced by older bridge versions from the repository root.
    cleanup_legacy_agent_files()

    # Validate ADB before touching the local server so failures are explicit.
    state = adb("get-state").stdout.strip()
    if state != "device":
        raise ToolError(f"ADB device is not ready: {state!r}")

    # A test run must never inherit stale in-memory server state.
    server = restart_local_server()
    reverse = ensure_adb_reverse()
    return {
        "adb_state": state,
        "server": server,
        "adb_reverse": reverse,
    }


def launch_game() -> dict[str, Any]:
    # Start every test from a clean client process and a fresh local server.
    adb("shell", "am", "force-stop", PACKAGE, check=False)
    runtime = prepare_local_runtime()
    component = f"{PACKAGE}/{ACTIVITY}"
    cp = adb("shell", "am", "start", "-n", component)
    return {
        "runtime": runtime,
        "component": component,
        "stdout": cp.stdout.strip(),
        "stderr": cp.stderr.strip(),
    }


def ollama_chat(image_path: Path, prompt: str, schema: dict[str, Any]) -> dict[str, Any]:
    """
    Send one screenshot to Ollama/Qwen3-VL.

    Compatibility notes:
    - Some Ollama/Qwen3-VL builds reject complex JSON-schema `format` requests
      with HTTP 400.
    - Some Qwen3-VL builds put JSON in message.thinking instead of
      message.content when structured output is requested.

    Therefore this bridge deliberately uses prompt-enforced JSON instead of
    the API `format` field, and accepts either content or thinking.
    """
    image_b64 = base64.b64encode(image_path.read_bytes()).decode("ascii")

    schema_text = json.dumps(schema, ensure_ascii=False, separators=(",", ":"))
    full_prompt = (
        prompt
        + "\n\nSTRICT OUTPUT RULE:\n"
        + "Return ONLY one valid JSON object. No markdown, no explanation.\n"
        + "The JSON must match this schema:\n"
        + schema_text
    )

    payload = {
        "model": VISION_MODEL,
        "messages": [{
            "role": "user",
            "content": full_prompt,
            "images": [image_b64],
        }],
        "stream": False,
        "options": {
            "temperature": 0.1,
        },
        "keep_alive": "10m",
    }

    req = urllib.request.Request(
        f"{OLLAMA_URL}/api/chat",
        data=json.dumps(payload).encode("utf-8"),
        headers={"Content-Type": "application/json"},
        method="POST",
    )

    try:
        with urllib.request.urlopen(req, timeout=300) as resp:
            raw = resp.read().decode("utf-8", errors="replace")
            outer = json.loads(raw)
    except urllib.error.HTTPError as e:
        try:
            body = e.read().decode("utf-8", errors="replace")
        except Exception:
            body = ""
        raise ToolError(
            f"Ollama HTTP {e.code} {e.reason} at {OLLAMA_URL}/api/chat\n"
            f"Response body:\n{body or '<empty>'}"
        )
    except urllib.error.URLError as e:
        raise ToolError(f"Cannot reach Ollama at {OLLAMA_URL}: {e}")
    except TimeoutError:
        raise ToolError("Vision request timed out.")

    message = outer.get("message", {}) or {}
    content = message.get("content", "") or ""
    thinking = message.get("thinking", "") or ""
    candidate = content.strip() or thinking.strip()

    if not candidate:
        raise ToolError(
            "Ollama returned no usable content/thinking field:\n"
            + json.dumps(outer, ensure_ascii=False)
        )

    # Remove a possible Markdown fence.
    candidate = candidate.strip()
    if candidate.startswith("```"):
        candidate = re.sub(r"^```(?:json)?\s*", "", candidate, flags=re.I)
        candidate = re.sub(r"\s*```$", "", candidate)

    try:
        return json.loads(candidate)
    except json.JSONDecodeError:
        # Last-resort extraction of the first JSON object.
        m = re.search(r"\{.*\}", candidate, re.S)
        if not m:
            raise ToolError(f"Vision response is not JSON:\n{candidate}")
        try:
            return json.loads(m.group(0))
        except json.JSONDecodeError as e:
            raise ToolError(
                f"Vision returned malformed JSON: {e}\nRaw response:\n{candidate}"
            )

def vision_base_prompt(width: int, height: int) -> str:
    return f"""
You are the visual sensor for an Android game automation agent.

The supplied screenshot is exactly {width}x{height} pixels.
IMPORTANT COORDINATE RULE:
- Use the image AS SUPPLIED. Do not rotate the coordinate system.
- top-left = [0,0]
- bottom-right = [1000,1000]
- Report all centers and bounding boxes in normalized 0..1000 coordinates.
- center_norm = [x,y]
- bbox_norm = [left,top,right,bottom]

Read visible text carefully, including Chinese.
Never invent text or controls that are not visible.
If uncertain, lower confidence.
"""


def observe(image: Path | None = None, extra_prompt: str = "") -> dict[str, Any]:
    owned_image = image is None
    if owned_image:
        image = capture_transient()
    assert image is not None
    image = image.resolve()
    try:
        width, height = png_size(image)
        prompt = vision_base_prompt(width, height) + """
Describe the current game screen.
List visible text and every meaningful interactive-looking element:
buttons, fields, tabs, dialog actions, character/role entries, and obvious navigation controls.
For each interactive element give its visible label, kind, center_norm, bbox_norm, confidence.
If a dialog is visible, summarize it in the dialog field.
""" + ("\nAdditional instruction:\n" + extra_prompt if extra_prompt else "")
        result = ollama_chat(image, prompt, OBSERVE_SCHEMA)
        envelope = {
            "image": str(image),
            "image_transient": owned_image,
            "image_size": [width, height],
            "model": VISION_MODEL,
            "focus": current_focus(),
            "vision": result,
        }
        LAST_VISION.parent.mkdir(parents=True, exist_ok=True)
        LAST_VISION.write_text(
            json.dumps(envelope, ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        return envelope
    finally:
        if owned_image:
            cleanup_transient(image)


def locate(target: str, image: Path | None = None) -> dict[str, Any]:
    owned_image = image is None
    if owned_image:
        image = capture_transient()
    assert image is not None
    image = image.resolve()
    try:
        width, height = png_size(image)
        prompt = vision_base_prompt(width, height) + f"""
Find the visible interactive element matching this target:

TARGET: {target}

It may be represented by Chinese text, an icon, or a visually obvious button.
Return found=false if it is not clearly present.
Do not choose a different control merely because it is nearby.
"""
        result = ollama_chat(image, prompt, LOCATE_SCHEMA)
        result["_image"] = str(image)
        result["_image_transient"] = owned_image
        result["_image_size"] = [width, height]
        return result
    finally:
        if owned_image:
            cleanup_transient(image)


def norm_to_px(center: list[int], width: int, height: int) -> tuple[int, int]:
    if len(center) != 2:
        raise ToolError("center_norm must contain exactly two values.")
    nx, ny = center
    if not (0 <= nx <= 1000 and 0 <= ny <= 1000):
        raise ToolError(f"Invalid normalized coordinates: {center}")
    x = round((nx / 1000.0) * (width - 1))
    y = round((ny / 1000.0) * (height - 1))
    return x, y


def blocked_target(target: str) -> str | None:
    t = target.lower()
    for word in DANGEROUS_TARGET_WORDS:
        if word.lower() in t:
            return word
    return None


def tap_px(x: int, y: int) -> dict[str, Any]:
    cp = adb("shell", "input", "tap", str(int(x)), str(int(y)))
    return {
        "tap_px": [int(x), int(y)],
        "stdout": cp.stdout.strip(),
        "stderr": cp.stderr.strip(),
    }


def click_target(target: str, min_confidence: float, force: bool, after: bool) -> dict[str, Any]:
    hit = blocked_target(target)
    if hit and not force:
        raise ToolError(
            f"Refusing potentially destructive target '{target}' "
            f"(matched '{hit}'). Re-run with --force only if intentional."
        )

    image = capture_transient()
    try:
        width, height = png_size(image)
        result = locate(target, image=image)

        if not result.get("found", False):
            return {"clicked": False, "reason": "target_not_found", "vision": result}

        confidence = float(result.get("confidence", 0.0))
        if confidence < min_confidence:
            return {
                "clicked": False,
                "reason": "confidence_too_low",
                "required": min_confidence,
                "vision": result,
            }

        x, y = norm_to_px(result["center_norm"], width, height)
        tap_result = tap_px(x, y)
        output: dict[str, Any] = {
            "clicked": True,
            "target": target,
            "matched_label": result.get("matched_label", ""),
            "confidence": confidence,
            "tap": tap_result,
            "before_image_transient": True,
        }

        if after:
            time.sleep(1.0)
            output["after"] = observe()
        return output
    finally:
        cleanup_transient(image)


def adb_type_text(text: str) -> dict[str, Any]:
    # adb input text uses %s for spaces.
    # Keep this explicit and do not read secrets from disk automatically.
    encoded = text.replace(" ", "%s")
    cp = adb("shell", "input", "text", encoded)
    return {
        "typed_length": len(text),
        "stdout": cp.stdout.strip(),
        "stderr": cp.stderr.strip(),
    }


def doctor() -> dict[str, Any]:
    result: dict[str, Any] = {}
    for name, cmd in [
        ("python", [sys.executable, "--version"]),
        ("adb", ["adb", "version"]),
        ("ollama", ["ollama", "--version"]),
    ]:
        try:
            cp = run(cmd, check=False)
            result[name] = {
                "ok": cp.returncode == 0,
                "stdout": cp.stdout.strip(),
                "stderr": cp.stderr.strip(),
            }
        except Exception as e:
            result[name] = {"ok": False, "error": str(e)}

    try:
        cp = adb("devices", check=False)
        result["adb_devices"] = cp.stdout.strip()
    except Exception as e:
        result["adb_devices"] = str(e)

    try:
        req = urllib.request.Request(f"{OLLAMA_URL}/api/tags", method="GET")
        with urllib.request.urlopen(req, timeout=10) as resp:
            tags = json.loads(resp.read().decode("utf-8"))
        models = [m.get("name", "") for m in tags.get("models", [])]
        result["ollama_api"] = {
            "ok": True,
            "url": OLLAMA_URL,
            "vision_model": VISION_MODEL,
            "vision_model_present": VISION_MODEL in models,
            "models": models,
        }
    except Exception as e:
        result["ollama_api"] = {"ok": False, "error": str(e)}

    try:
        result["focus"] = current_focus()
    except Exception as e:
        result["focus"] = {"error": str(e)}
    return result


def status() -> dict[str, Any]:
    cp = adb("devices")
    return {
        "devices": cp.stdout.strip(),
        "focus": current_focus(),
        "package": PACKAGE,
        "activity": ACTIVITY,
        "vision_model": VISION_MODEL,
        "ollama_url": OLLAMA_URL,
    }


def print_json(obj: Any) -> None:
    print(json.dumps(obj, ensure_ascii=False, indent=2))


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="TruThan ADB + Qwen3-VL bridge for GPT-OSS/OpenCode"
    )
    sub = p.add_subparsers(dest="command", required=True)

    sub.add_parser("doctor")
    sub.add_parser("status")
    sub.add_parser("launch")

    sp = sub.add_parser("shot")
    sp.add_argument("path", nargs="?", default=str(DEFAULT_SCREENSHOT))

    sp = sub.add_parser("observe")
    sp.add_argument("--image")
    sp.add_argument("--prompt", default="")

    sp = sub.add_parser("locate")
    sp.add_argument("target")
    sp.add_argument("--image")

    sp = sub.add_parser("click")
    sp.add_argument("target")
    sp.add_argument("--min-confidence", type=float, default=0.72)
    sp.add_argument("--force", action="store_true")
    sp.add_argument("--no-after", action="store_true")

    sp = sub.add_parser("tap")
    sp.add_argument("x", type=int)
    sp.add_argument("y", type=int)

    sp = sub.add_parser("tapn")
    sp.add_argument("x", type=int, help="normalized x 0..1000")
    sp.add_argument("y", type=int, help="normalized y 0..1000")

    sp = sub.add_parser("text")
    sp.add_argument("value")

    sub.add_parser("back")
    return p


def main() -> int:
    args = build_parser().parse_args()
    try:
        if args.command == "doctor":
            print_json(doctor())
        elif args.command == "status":
            print_json(status())
        elif args.command == "launch":
            print_json(launch_game())
        elif args.command == "shot":
            path = capture(Path(args.path))
            w, h = png_size(path)
            print_json({
                "path": str(path),
                "bytes": path.stat().st_size,
                "image_size": [w, h],
            })
        elif args.command == "observe":
            image = Path(args.image) if args.image else None
            print_json(observe(image=image, extra_prompt=args.prompt))
        elif args.command == "locate":
            image = Path(args.image) if args.image else None
            print_json(locate(args.target, image=image))
        elif args.command == "click":
            print_json(click_target(
                args.target,
                min_confidence=args.min_confidence,
                force=args.force,
                after=not args.no_after,
            ))
        elif args.command == "tap":
            print_json(tap_px(args.x, args.y))
        elif args.command == "tapn":
            image = capture_transient()
            try:
                w, h = png_size(image)
                x, y = norm_to_px([args.x, args.y], w, h)
                out = tap_px(x, y)
                out["normalized"] = [args.x, args.y]
                out["image_size_used"] = [w, h]
                print_json(out)
            finally:
                cleanup_transient(image)
        elif args.command == "text":
            print_json(adb_type_text(args.value))
        elif args.command == "back":
            cp = adb("shell", "input", "keyevent", "4")
            print_json({
                "ok": cp.returncode == 0,
                "stdout": cp.stdout.strip(),
                "stderr": cp.stderr.strip(),
            })
        else:
            raise ToolError(f"Unknown command: {args.command}")
        return 0
    except ToolError as e:
        print(json.dumps({
            "ok": False,
            "error": str(e),
        }, ensure_ascii=False, indent=2), file=sys.stderr)
        return 2
    except Exception as e:
        print(json.dumps({
            "ok": False,
            "error": f"{type(e).__name__}: {e}",
        }, ensure_ascii=False, indent=2), file=sys.stderr)
        return 3


if __name__ == "__main__":
    raise SystemExit(main())
