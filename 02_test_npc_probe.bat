@echo off
setlocal
rem One explicitly synthetic entity. Does not identify the original tutorial NPC.
set "TRUTHAN_SINGLE_NPC_PROBE=1"
set "TRUTHAN_SCENE=9068"
set "TRUTHAN_NPC_ASSET_PROBE=0"
set "TRUTHAN_MOB_ASSET_PROBE=0"
set "TRUTHAN_EXPERIMENTAL_SPAWN=0"
set "TRUTHAN_CAIYUN_OBJ="
set "TRUTHAN_HUOHUYAO_OBJ="
call "%~dp001_test_capture.bat"
endlocal
