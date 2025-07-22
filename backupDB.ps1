# Konfigurasi path tool dan hasil
$pgDump     = "D:\Installs\PostgreSQL\17\bin\pg_dump.exe"  # Sesuaikan dengan versi sistem kamu
$backupDir  = "D:\Github\rilis_ep_be"
$backupFile = "$backupDir\backup_evolusipark.sql"
$env:PGPASSWORD = "90909090"  # Password user postgres

# Buat folder backup jika belum ada
if (-Not (Test-Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir | Out-Null
    Write-Host "[INFO] Folder backup dibuat: $backupDir"
}

Write-Host "`n[INFO] Memulai proses backup database evolusipark..."
try {
    & $pgDump -U postgres -h localhost -p 5432 -F p -d evolusipark -f $backupFile
    Write-Host "[SUCCESS] Backup selesai. File disimpan di: $backupFile"
} catch {
    Write-Host "[ERROR] Gagal melakukan backup. $_"
} finally {
    Remove-Item Env:PGPASSWORD
}
