@echo off
echo === Tru Than Local Server v0.26 ===
adb reverse tcp:1888 tcp:1888
adb reverse tcp:8089 tcp:8089
adb reverse tcp:19000 tcp:19000
adb reverse tcp:2888 tcp:2888
adb reverse tcp:29000 tcp:29000
adb reverse --list
echo.
echo CLEAN MODE (recommended):
echo   py truthan_local_server_v026.py
echo.
echo NPC ASSET PROBE (diagnostic only):
echo   set TRUTHAN_NPC_ASSET_PROBE=1
echo   py truthan_local_server_v026.py
echo.
echo MOB ASSET PROBE (diagnostic only):
echo   set TRUTHAN_MOB_ASSET_PROBE=1
echo   py truthan_local_server_v026.py
echo.
echo After an exact object id is established, use:
echo   set TRUTHAN_CAIYUN_OBJ=xxxx
echo   set TRUTHAN_HUOHUYAO_OBJ=xxxx
pause
