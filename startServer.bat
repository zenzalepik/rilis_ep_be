::=======================startServer==========================

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0startServer.ps1"
::pause
if errorlevel 1 exit /b 1
exit /b 0
