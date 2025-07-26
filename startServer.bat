::=======================startServer==========================

@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0startServer.ps1"
::pause
if errorlevel 1 exit /b 1
exit /b 0


::@echo off
::cd /d %~dp0
::
:::: Jalankan Node.js server & log output ke file
:::: Sesuaikan nama file server.js jika berbeda
::node server.js >> "C:\EvoParkBE\status\server.log" 2>&1
::
:::: Tulis pesan sukses ke log
::echo [SUCCESS] Server Nodemon berjalan sebagai background process >> "C:\EvoParkBE\status\server.log"
::