::===============================================================================
:: RUN BACKGROUND
::===============================================================================
::@echo off
::net session >nul 2>&1
::if %errorlevel% neq 0 (
::    echo [INFO] Meminta hak Administrator...
::    powershell -Command "Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -WindowStyle Hidden -File \"%~dp0StartPostgres.ps1\"' -Verb RunAs -Wait"
::    if errorlevel 1 exit /b 1
::    exit /b 0
::)
::
::powershell -Command "Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -WindowStyle Hidden -File \"%~dp0StartPostgres.ps1\"' -Wait"
::if errorlevel 1 exit /b 1
::exit /b 0

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0StartPostgres.ps1"
if errorlevel 1 exit /b 1
exit /b 0