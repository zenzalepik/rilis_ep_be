::=======================SetupAll==========================

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0SetupAll.ps1"

::if errorlevel 1 exit /b 1
::exit /b 0