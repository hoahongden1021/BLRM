#!/usr/bin/env python3
"""Publish one GPT-20B session handoff and all repository changes to GitHub.

The agent writes loggpt/_current.md (or passes another UTF-8 file). This tool
never claims to export a chat application's private transcript automatically.
"""

from __future__ import annotations

import argparse
import datetime as dt
from pathlib import Path
import re
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[1]
LOG_DIR = ROOT / "loggpt"
DEFAULT_SOURCE = LOG_DIR / "_current.md"
MAX_LOG_BYTES = 2 * 1024 * 1024
EXPECTED_REMOTE = re.compile(r"(?:^|[:/])hoahongden1021/BLRM(?:\.git)?/?$", re.I)


def git(*args: str) -> str:
    result = subprocess.run(
        ["git", *args], cwd=ROOT, text=True, encoding="utf-8",
        errors="replace", capture_output=True, check=False,
    )
    if result.returncode:
        detail = (result.stderr or result.stdout).strip()
        raise RuntimeError(f"git {args[0]} failed ({result.returncode}): {detail}")
    return result.stdout.strip()


def preflight() -> tuple[str, str]:
    if Path(git("rev-parse", "--show-toplevel")).resolve() != ROOT:
        raise RuntimeError("script is not inside the expected Git worktree")
    branch = git("symbolic-ref", "--quiet", "--short", "HEAD")
    remote = git("remote", "get-url", "origin")
    if not EXPECTED_REMOTE.search(remote):
        raise RuntimeError("origin is not hoahongden1021/BLRM; refusing push")
    # Check author identity before moving/deleting any handoff log.
    git("var", "GIT_AUTHOR_IDENT")
    return branch, git("rev-parse", "HEAD")


def read_source(path: Path) -> str:
    if not path.is_file() or path.is_symlink():
        raise RuntimeError(f"session log does not exist as a regular file: {path}")
    if path.stat().st_size > MAX_LOG_BYTES:
        raise RuntimeError("session log exceeds 2 MiB; write a concise handoff")
    try:
        content = path.read_text(encoding="utf-8-sig")
    except UnicodeError as exc:
        raise RuntimeError("session log must be UTF-8 text") from exc
    if len(content.strip()) < 80 or "\x00" in content:
        raise RuntimeError("session log is empty/incomplete or contains binary data")
    return content


def publish_log(source: Path, branch: str, base_commit: str) -> Path:
    source = source.resolve()
    if source.parent == LOG_DIR and source.name.startswith("session_"):
        raise RuntimeError("source must be a new session log, not a published log")
    content = read_source(source)
    now = dt.datetime.now(dt.timezone.utc)
    LOG_DIR.mkdir(exist_ok=True)
    name = f"session_{now:%Y%m%d_%H%M%S_%f}Z.md"
    destination = LOG_DIR / name
    header = (
        f"# GPT-20B handoff — {now.isoformat()}\n\n"
        f"Branch: {branch}\nBase commit: {base_commit}\n\n"
    )
    # Exclusive creation prevents overwriting a previous session from the same second.
    with destination.open("x", encoding="utf-8", newline="\n") as handle:
        handle.write(header)
        handle.write(content)
        if not content.endswith("\n"):
            handle.write("\n")
    if source.parent == LOG_DIR:
        source.unlink()

    # Only two published handoff logs remain in the current Git tree.
    old_logs = sorted(
        (p for p in LOG_DIR.iterdir()
         if p.is_file() and p.suffix.lower() in (".md", ".txt", ".log")
         and p.name != "_current.md"),
        key=lambda p: (p.stat().st_mtime_ns, p.name), reverse=True,
    )
    for old in old_logs[2:]:
        old.unlink()
    return destination


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "session_log", nargs="?", default=str(DEFAULT_SOURCE),
        help="UTF-8 log written by GPT-20B (default: loggpt/_current.md).",
    )
    parser.add_argument(
        "--retry", action="store_true",
        help="Retry commit/push after an earlier failure without rotating logs again.",
    )
    args = parser.parse_args()
    if args.retry and Path(args.session_log).resolve() != DEFAULT_SOURCE.resolve():
        parser.error("--retry does not take a new session log")

    branch, base_commit = preflight()
    if args.retry:
        if not LOG_DIR.is_dir() or not list(LOG_DIR.glob("session_*.md")):
            raise RuntimeError("there is no prepared session log to retry")
        if DEFAULT_SOURCE.exists():
            raise RuntimeError("_current.md exists; publish it normally without --retry")
    else:
        source = Path(args.session_log)
        if not source.is_absolute():
            source = ROOT / source
        published = publish_log(source, branch, base_commit)
        print(f"LOG_READY={published.relative_to(ROOT).as_posix()}", flush=True)

    # -A stages additions, edits and deletions throughout this repository.
    # Git's ignore rules continue to exclude runtime dumps and local caches.
    git("add", "-A", "--", ".")
    staged = git("diff", "--cached", "--name-only")
    if staged:
        timestamp = dt.datetime.now(dt.timezone.utc).strftime("%Y-%m-%d %H:%M UTC")
        git("commit", "-m", f"gpt20: publish session {timestamp}")
    commit = git("rev-parse", "HEAD")
    # Never force-push or silently merge unrelated remote work.
    git("push", "origin", f"HEAD:refs/heads/{branch}")
    logs = sorted(LOG_DIR.glob("session_*.md"), reverse=True)
    if not logs:
        raise RuntimeError("push finished but no published session log exists")
    print(f"PUSH_OK={commit}")
    print(f"BRANCH={branch}")
    print(f"LATEST_LOG={logs[0].relative_to(ROOT).as_posix()}")
    print(f"LOG_COUNT={len(logs)}")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (RuntimeError, OSError) as exc:
        print(f"PUBLISH_FAILED={exc}", file=sys.stderr)
        print("If LOG_READY was printed, fix the cause and run: 99_gpt20_publish.bat --retry", file=sys.stderr)
        print("Otherwise fix the cause and rerun the original publish command.", file=sys.stderr)
        raise SystemExit(1)
