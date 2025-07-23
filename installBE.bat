::@echo off
::powershell -ExecutionPolicy Bypass -File "%~dp0installBE.ps1"
::pause

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0installBE.ps1"
if errorlevel 1 exit /b 1
exit /b 0