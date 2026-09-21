## Local emulator vision tool

For TruThan emulator interaction, follow `docs/TRUTHAN_GUI_TOOL.md`.

Use:
- `python tools/truthan_gui.py observe` to visually inspect a fresh emulator screenshot through local Qwen3-VL.
- `python tools/truthan_gui.py click "<target>"` to visually locate, tap, and verify a control.
- Never rely on `uiautomator` for in-game controls because TruThan renders them inside a custom View.
- Never guess coordinates from stale screenshots.
