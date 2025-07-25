::===============================================================================
:: RUN BACKGROUND
::===============================================================================


@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0StartPostgres.ps1"
if errorlevel 1 exit /b 1
exit /b 0

::@echo off
::powershell -ExecutionPolicy Bypass -File "%~dp0StartPostgres.ps1"
::
::REM Tunggu 2 detik
::timeout /t 2 /nobreak >nul
::
::REM Jalankan StatusPostgres
::powershell -ExecutionPolicy Bypass -File "%~dp0StatusPostgres.ps1"
::
::exit /b 0
