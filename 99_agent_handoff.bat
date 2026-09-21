@echo off
echo ========================================
echo AGENT HANDOFF
echo ========================================

echo.
echo [FILES MODIFIED]
git diff --name-only
git ls-files --others --exclude-standard

echo.
echo [DIFF STAT]
git diff --stat

echo.
echo [GIT STATUS]
git status --short

echo.
echo ========================================
echo END HANDOFF
echo ========================================