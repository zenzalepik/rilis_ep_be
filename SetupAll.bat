@echo off
setlocal enabledelayedexpansion

:: === KONFIGURASI ===
set STATUSDIR=%~dp0.status
set LOGFILE=%~dp0setup.log

if not exist "%STATUSDIR%" mkdir "%STATUSDIR%"
echo [INIT] Setup dimulai pada %DATE% %TIME% > "%LOGFILE%"

:: === URUTAN TAHAP ===
call :step installBE.bat        installBE
call :step installDB.bat        installDB
call :step initDB.bat           initDB
call :step settingDB.bat        settingDB
call :step StartPostgres.bat    StartPostgres
call :step StatusPostgres.bat   StatusPostgres
call :step importDB.bat         importDB
call :step startServer.bat      startServer

echo [FINISH] Semua tahapan selesai pada %DATE% %TIME% >> "%LOGFILE%"
exit /b 0

:: === FUNGSI STEP ===
:step
set STEPFILE=%STATUSDIR%\%2.done
if exist "%STEPFILE%" (
    echo [SKIP] %2 sudah selesai. >> "%LOGFILE%"
    echo - %2 dilewati (sudah selesai).
) else (
    echo [RUN] Menjalankan tahap: %2 >> "%LOGFILE%"
    call "%~dp0%1"
    if errorlevel 1 (
        echo [ERROR] Tahap %2 gagal. Proses dihentikan. >> "%LOGFILE%"
        echo - ERROR di %2. Setup dibatalkan.
        exit /b 1
    )
    echo %DATE% %TIME% > "%STEPFILE%"
    echo [SUCCESS] Tahap %2 selesai. >> "%LOGFILE%"
)
goto :eof
