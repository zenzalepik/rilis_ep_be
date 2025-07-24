
::===================================================================================================================
@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0StatusPostgres.ps1"
if errorlevel 1 exit /b 1
exit /b 0