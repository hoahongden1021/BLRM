@echo off
setlocal
cd /d "%~dp0" || exit /b 1
where py >nul 2>&1
if errorlevel 1 (
    echo ERROR: Windows Python launcher 'py' is required. 1>&2
    exit /b 1
)
py -3 "%~dp0tools\gpt20_publish.py" %*
exit /b %ERRORLEVEL%
