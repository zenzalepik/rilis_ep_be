::@echo off
::powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0installDB.ps1"


@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0installDB.ps1"
if errorlevel 1 exit /b 1
exit /b 0