::@REM @echo off
::@REM powershell -ExecutionPolicy Bypass -File "%~dp0StartPostgres.ps1"
::@REM pause

@echo off
:: Cek apakah dijalankan sebagai Admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [INFO] Meminta hak Administrator...
    powershell -Command "Start-Process 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -File \"%~dp0StartPostgres.ps1\"' -Verb RunAs"
    exit /b
)

:: Kalau sudah admin, langsung jalankan script
powershell -ExecutionPolicy Bypass -File "%~dp0StartPostgres.ps1"
pause
