#!/usr/bin/env python3
import argparse
import json
import pathlib
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parents[1]
STATE_CANDIDATES = [
    ROOT / "server" / "truthan_packet_logs" / "runtime_state.json",
    ROOT / "truthan_packet_logs" / "runtime_state.json",
]
DEFAULT_STATE = next((p for p in STATE_CANDIDATES if p.exists()), STATE_CANDIDATES[0])


def load_state(path):
    if not path.exists():
        raise FileNotFoundError(
            f"runtime state not found: {path}\n"
            "Start the local server and connect the game first."
        )
    return json.loads(path.read_text(encoding="utf-8"))


def with_age(state):
    out = dict(state)
    updated = state.get("updated_unix_ms")
    if isinstance(updated, (int, float)):
        out["state_age_ms"] = max(0, int(time.time() * 1000) - int(updated))
    return out


def nearest_npc(state, selectable_only=False):
    rows = state.get("npcs") or []
    if selectable_only:
        rows = [row for row in rows if row.get("can_select")]
    if not rows:
        return None
    return min(rows, key=lambda row: float(row.get("distance", float("inf"))))


def compact_agent_view(state):
    nearest = nearest_npc(state, selectable_only=True)
    return {
        "game_connected": state.get("game_connected"),
        "scene": state.get("scene"),
        "player": state.get("player"),
        "nearest_selectable_npc": nearest,
        "npc_count": len(state.get("npcs") or []),
        "last_npc_request": state.get("last_npc_request"),
        "updated_unix_ms": state.get("updated_unix_ms"),
    }


def print_json(obj):
    print(json.dumps(obj, ensure_ascii=False, indent=2))


def main():
    parser = argparse.ArgumentParser(
        description="Read Tru Than machine-readable runtime world state."
    )
    parser.add_argument(
        "--state",
        default=str(DEFAULT_STATE),
        help="Path to runtime_state.json",
    )
    sub = parser.add_subparsers(dest="command", required=True)

    sub.add_parser("show", help="Print the complete current runtime state.")
    sub.add_parser(
        "agent",
        help="Print a compact state view for a local AI agent.",
    )

    p_nearest = sub.add_parser(
        "nearest",
        help="Print the nearest NPC from the server-known cmd132 probe set.",
    )
    p_nearest.add_argument(
        "--selectable",
        action="store_true",
        help="Only consider NPCs whose server-sent can_select flag is true.",
    )

    p_watch = sub.add_parser(
        "watch",
        help="Print a compact state whenever runtime_state.json changes.",
    )
    p_watch.add_argument("--interval", type=float, default=0.25)

    args = parser.parse_args()
    path = pathlib.Path(args.state).expanduser().resolve()

    if args.command == "watch":
        last_stamp = None
        try:
            while True:
                try:
                    stamp = path.stat().st_mtime_ns
                except FileNotFoundError:
                    time.sleep(args.interval)
                    continue
                if stamp != last_stamp:
                    state = load_state(path)
                    print_json(with_age(compact_agent_view(state)))
                    print("---", flush=True)
                    last_stamp = stamp
                time.sleep(args.interval)
        except KeyboardInterrupt:
            return 0

    state = load_state(path)

    if args.command == "show":
        print_json(with_age(state))
        return 0

    if args.command == "agent":
        print_json(with_age(compact_agent_view(state)))
        return 0

    if args.command == "nearest":
        print_json({
            "scene": state.get("scene"),
            "player": state.get("player"),
            "nearest_npc": nearest_npc(state, selectable_only=args.selectable),
            "updated_unix_ms": state.get("updated_unix_ms"),
            "state_age_ms": with_age(state).get("state_age_ms"),
        })
        return 0

    parser.error("unknown command")


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except FileNotFoundError as e:
        print(str(e), file=sys.stderr)
        raise SystemExit(2)
    except (OSError, json.JSONDecodeError) as e:
        print(f"state read failed: {e}", file=sys.stderr)
        raise SystemExit(3)
