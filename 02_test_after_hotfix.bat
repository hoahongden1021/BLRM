@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo TruThan Vision HTTP 400 Hotfix
echo ========================================
echo.

if not exist "tools\truthan_gui.py" (
  echo [FAIL] Put this hotfix in the TruThan_RE root folder first.
  echo Expected: %CD%\tools\truthan_gui.py
  goto :end
)

echo [1] Ollama version:
ollama --version
echo.

echo [2] Vision model:
ollama list | findstr /I "qwen3-vl"
echo.

echo [3] Bridge doctor:
python tools\truthan_gui.py doctor
echo.

echo [4] Vision test:
python tools\truthan_gui.py observe

:end
echo.
pause
endlocal
