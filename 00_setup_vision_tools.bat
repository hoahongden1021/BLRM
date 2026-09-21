@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo TruThan Vision Tool - setup/check
echo ========================================
echo.

where adb >nul 2>nul
if errorlevel 1 (
  echo [FAIL] adb not found in PATH.
  goto :end
)
echo [OK] adb found.

where ollama >nul 2>nul
if errorlevel 1 (
  echo [FAIL] ollama not found in PATH.
  goto :end
)
echo [OK] ollama found.

where python >nul 2>nul
if errorlevel 1 (
  echo [FAIL] python not found in PATH.
  goto :end
)
echo [OK] python found.
echo.

ollama list | findstr /I /C:"qwen3-vl:8b" >nul
if errorlevel 1 (
  echo qwen3-vl:8b is not installed.
  echo Downloading it now...
  ollama pull qwen3-vl:8b
  if errorlevel 1 (
    echo [FAIL] Could not pull qwen3-vl:8b.
    goto :end
  )
) else (
  echo [OK] qwen3-vl:8b already installed.
)

echo.
python tools\truthan_gui.py doctor

:end
echo.
pause
endlocal
