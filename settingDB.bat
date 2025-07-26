::=======================settingDB==========================


::@echo off
::powershell -ExecutionPolicy Bypass -File "%~dp0settingDB.ps1"
::pause


@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0settingDB.ps1"
if errorlevel 1 exit /b 1
exit /b 0