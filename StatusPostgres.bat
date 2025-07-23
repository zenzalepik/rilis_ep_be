@echo off
:: Cek apakah dijalankan sebagai Admin
::net session >nul 2>&1
::if %errorlevel% neq 0 (
::    echo [INFO] Meminta hak Administrator...
::    powershell -Command "Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -WindowStyle Hidden -File \"%~dp0StatusPostgres.ps1\"' -Verb RunAs"
::    exit /b
::)

:: Kalau sudah admin, langsung jalankan PowerShell di background
::powershell -Command "Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -WindowStyle Hidden -File \"%~dp0StatusPostgres.ps1\"'"
::exit /b




::===================================================================================================================
@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0StatusPostgres.ps1"
