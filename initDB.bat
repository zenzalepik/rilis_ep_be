::@echo off
::powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0initDB.ps1"


@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0initDB.ps1"
if errorlevel 1 exit /b 1
exit /b 0