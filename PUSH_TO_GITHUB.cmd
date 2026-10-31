@echo off
rem Pushes this folder and its subfolders to the AlundraArchipelago repository on GitHub.
cd /d "%~dp0"
if not exist .git (
  git init -b main || goto fail
  git remote add origin https://github.com/SkyPilotSamurai/AlundraArchipelago.git || goto fail
)
git add -A . || goto fail
git commit -m "Update Alundra Archipelago"
git push -u origin main || goto fail
echo.
echo Pushed.
pause
exit /b 0
:fail
echo.
echo Push failed - see above.
pause
exit /b 1
