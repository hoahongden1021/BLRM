TruThan AI Vision Tools
========================

PURPOSE
-------
GPT-OSS/OpenCode remains the main agent.
Qwen3-VL is used as a local "eye" for screenshots.
ADB remains the "hand".

No Python packages are required; the bridge uses Python's standard library.

INSTALL INTO YOUR REPO
----------------------
Extract/copy these files into:

C:\Users\Mech\Desktop\TruThan_RE\

So you get:

TruThan_RE\
  tools\truthan_gui.py
  docs\TRUTHAN_GUI_TOOL.md
  00_setup_vision_tools.bat
  01_test_vision.bat
  02_OPENCODE_TEST_PROMPT.txt
  AGENTS_VISION_SNIPPET.md

FIRST RUN
---------
1. Double-click:
   00_setup_vision_tools.bat

   It checks adb/python/ollama and pulls qwen3-vl:8b if missing.

2. Double-click:
   01_test_vision.bat

3. If it passes, paste the contents of:
   02_OPENCODE_TEST_PROMPT.txt
   into GPT-OSS/OpenCode.

RECOMMENDED PERMANENT RULE
--------------------------
Append AGENTS_VISION_SNIPPET.md to your repo AGENTS.md, or copy its section manually.

MAIN COMMANDS
-------------
python tools\truthan_gui.py doctor
python tools\truthan_gui.py status
python tools\truthan_gui.py launch
python tools\truthan_gui.py observe
python tools\truthan_gui.py locate "确定"
python tools\truthan_gui.py click "确定"
python tools\truthan_gui.py shot
python tools\truthan_gui.py back

FILES CREATED DURING USE
------------------------
.agent_screen.png
.agent_vision.json

They are runtime artifacts and can be added to .gitignore.

ENVIRONMENT OVERRIDES
---------------------
TRUTHAN_VISION_MODEL=qwen3-vl:8b
OLLAMA_URL=http://127.0.0.1:11434
TRUTHAN_PACKAGE=com.t4game
TRUTHAN_ACTIVITY=j2ab.android.app.J2ABMIDletActivity
