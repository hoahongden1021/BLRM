@echo off
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul

rem ============================================================
rem Tru Than RE - shared environment bootstrap
rem IMPORTANT:
rem   - When another .bat uses this file, call it with:
rem       call 00_setup_env.bat
rem   - Variables are exported back to the caller at the end.
rem ============================================================

set "ROOT=%~dp0"
for %%I in ("%ROOT%.") do set "ROOT=%%~fI"

set "TRUTHAN_ROOT=%ROOT%"
set "TRUTHAN_PACKAGE=com.t4game"

rem Keep Python stdout/stderr readable and deterministic.
set "PYTHONUTF8=1"
set "PYTHONIOENCODING=utf-8"
set "PYTHONUNBUFFERED=1"

rem ---------- Find ADB ----------
set "ADB_EXE="

for /f "delims=" %%I in ('where adb.exe 2^>nul') do (
    if not defined ADB_EXE set "ADB_EXE=%%I"
)

if not defined ADB_EXE if defined ANDROID_SDK_ROOT (
    if exist "%ANDROID_SDK_ROOT%\platform-tools\adb.exe" (
        set "ADB_EXE=%ANDROID_SDK_ROOT%\platform-tools\adb.exe"
    )
)

if not defined ADB_EXE if defined ANDROID_HOME (
    if exist "%ANDROID_HOME%\platform-tools\adb.exe" (
        set "ADB_EXE=%ANDROID_HOME%\platform-tools\adb.exe"
    )
)

if not defined ADB_EXE (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" (
        set "ADB_EXE=%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe"
    )
)

if not defined ADB_EXE (
    echo [ERROR] adb.exe not found.
    echo Install Android SDK Platform-Tools in Android Studio:
    echo   Settings ^> Languages ^& Frameworks ^> Android SDK ^> SDK Tools
    echo Then enable "Android SDK Platform-Tools".
    exit /b 10
)

rem ---------- Find Python ----------
set "PY_EXE="

for /f "delims=" %%I in ('where py.exe 2^>nul') do (
    if not defined PY_EXE set "PY_EXE=%%I"
)

if not defined PY_EXE (
    for /f "delims=" %%I in ('where python.exe 2^>nul') do (
        if not defined PY_EXE set "PY_EXE=%%I"
    )
)

if not defined PY_EXE (
    echo [ERROR] Python not found in PATH.
    echo Install Python 3 and make sure "py" or "python" works in Terminal.
    exit /b 11
)

rem ---------- Locate server source ----------
set "TRUTHAN_SERVER="
set "TRUTHAN_SERVER_DIR="

rem Preferred future layout.
if exist "%ROOT%\server\main.py" (
    set "TRUTHAN_SERVER=%ROOT%\server\main.py"
)

rem Current versioned layout under server\
if not defined TRUTHAN_SERVER (
    for /f "delims=" %%I in ('dir /b /a-d /o-n "%ROOT%\server\truthan_local_server_v*.py" 2^>nul') do (
        if not defined TRUTHAN_SERVER set "TRUTHAN_SERVER=%ROOT%\server\%%I"
    )
)

rem Current/legacy flat layout.
if not defined TRUTHAN_SERVER (
    for /f "delims=" %%I in ('dir /b /a-d /o-n "%ROOT%\truthan_local_server_v*.py" 2^>nul') do (
        if not defined TRUTHAN_SERVER set "TRUTHAN_SERVER=%ROOT%\%%I"
    )
)

if not defined TRUTHAN_SERVER (
    echo [ERROR] Could not locate Tru Than server source.
    echo Expected one of:
    echo   %ROOT%\server\main.py
    echo   %ROOT%\server\truthan_local_server_vXXX.py
    echo   %ROOT%\truthan_local_server_vXXX.py
    exit /b 12
)

for %%I in ("%TRUTHAN_SERVER%") do set "TRUTHAN_SERVER_DIR=%%~dpI"
if "%TRUTHAN_SERVER_DIR:~-1%"=="\" set "TRUTHAN_SERVER_DIR=%TRUTHAN_SERVER_DIR:~0,-1%"

rem ---------- Shared directories ----------
set "TRUTHAN_DEBUG_ROOT=%ROOT%\debug_runs"
set "TRUTHAN_PACKET_LOG_DIR=%TRUTHAN_SERVER_DIR%\truthan_packet_logs"

if not exist "%TRUTHAN_DEBUG_ROOT%" mkdir "%TRUTHAN_DEBUG_ROOT%" >nul 2>&1
if not exist "%TRUTHAN_PACKET_LOG_DIR%" mkdir "%TRUTHAN_PACKET_LOG_DIR%" >nul 2>&1

rem ---------- Ports ----------
set "TRUTHAN_PORT_AUTH=29000"
set "TRUTHAN_PORT_GAME=19000"
set "TRUTHAN_PORT_AUX1=1888"
set "TRUTHAN_PORT_AUX2=8089"
set "TRUTHAN_PORT_AUX3=2888"

rem ---------- Optional tools ----------
set "GIT_EXE="
for /f "delims=" %%I in ('where git.exe 2^>nul') do (
    if not defined GIT_EXE set "GIT_EXE=%%I"
)

echo.
echo ============================================================
echo Tru Than RE environment
echo ============================================================
echo ROOT       : %TRUTHAN_ROOT%
echo SERVER     : %TRUTHAN_SERVER%
echo ADB        : %ADB_EXE%
echo PYTHON     : %PY_EXE%
if defined GIT_EXE (
    echo GIT        : %GIT_EXE%
) else (
    echo GIT        : [not found - debug capture still works]
)
echo PACKAGE    : %TRUTHAN_PACKAGE%
echo PACKET LOG : %TRUTHAN_PACKET_LOG_DIR%
echo ============================================================
echo.

rem Export variables back to caller despite setlocal.
endlocal & (
    set "TRUTHAN_ROOT=%TRUTHAN_ROOT%"
    set "TRUTHAN_PACKAGE=%TRUTHAN_PACKAGE%"
    set "PYTHONUTF8=1"
    set "PYTHONIOENCODING=utf-8"
    set "PYTHONUNBUFFERED=1"
    set "ADB_EXE=%ADB_EXE%"
    set "PY_EXE=%PY_EXE%"
    set "GIT_EXE=%GIT_EXE%"
    set "TRUTHAN_SERVER=%TRUTHAN_SERVER%"
    set "TRUTHAN_SERVER_DIR=%TRUTHAN_SERVER_DIR%"
    set "TRUTHAN_DEBUG_ROOT=%TRUTHAN_DEBUG_ROOT%"
    set "TRUTHAN_PACKET_LOG_DIR=%TRUTHAN_PACKET_LOG_DIR%"
    set "TRUTHAN_PORT_AUTH=%TRUTHAN_PORT_AUTH%"
    set "TRUTHAN_PORT_GAME=%TRUTHAN_PORT_GAME%"
    set "TRUTHAN_PORT_AUX1=%TRUTHAN_PORT_AUX1%"
    set "TRUTHAN_PORT_AUX2=%TRUTHAN_PORT_AUX2%"
    set "TRUTHAN_PORT_AUX3=%TRUTHAN_PORT_AUX3%"
)
exit /b 0
