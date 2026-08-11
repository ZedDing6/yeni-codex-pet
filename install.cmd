@echo off
setlocal
set "DEST=%USERPROFILE%\.codex\pets\yeni"

if not exist "%~dp0pet.json" (
  echo [ERROR] pet.json is missing.
  pause
  exit /b 1
)
if not exist "%~dp0spritesheet.webp" (
  echo [ERROR] spritesheet.webp is missing.
  pause
  exit /b 1
)

if not exist "%DEST%" mkdir "%DEST%"
copy /Y "%~dp0pet.json" "%DEST%\pet.json" >nul
copy /Y "%~dp0spritesheet.webp" "%DEST%\spritesheet.webp" >nul

echo Yeni has been installed to:
echo %DEST%
echo.
echo Fully quit and restart Codex, then select Yeni.
pause
