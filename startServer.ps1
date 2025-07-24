
#===============================================================================================
# Jalankan nodemon start menggunakan node.exe lokal
#===============================================================================================
# $nodePath = "C:\EvoParkBE\node.exe"
# $projectPath = "C:\EvoParkBE"

# Write-Host "`n[INFO] Menjalankan server Nodemon di: $projectPath..."
# try {
#     Push-Location $projectPath
#     & $nodePath  "C:\EvoParkBE\node_modules\nodemon\bin\nodemon.js" start
#     Pop-Location
#     Write-Host "[SUCCESS] [RUNNING] Server berjalan"
#     exit 0
# } catch {
#     Write-Host "[ERROR] Gagal menjalankan nodemon start. $_"
#     exit 1
# }


$nodePath     = "C:\EvoParkBE\node.exe"
$nodemonPath  = "C:\EvoParkBE\node_modules\nodemon\bin\nodemon.js"
$projectPath  = "C:\EvoParkBE"

Write-Host "`n[INFO] Menjalankan server Nodemon di background..."

try {
    Write-Host "[INFO] Mencoba menjalankan server."
    Start-Process -FilePath $nodePath -ArgumentList "`"$nodemonPath`" start" -WorkingDirectory $projectPath -WindowStyle Hidden
    Write-Host "[SUCCESS] Server Nodemon berjalan sebagai background process."
    exit 0
} catch {
    Write-Host "[ERROR] Gagal menjalankan Nodemon di background. $_"
    exit 1
}
