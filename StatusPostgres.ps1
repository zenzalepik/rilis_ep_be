# Path ke pg_ctl.exe dan data directory
$pgCtl = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
$dataDir = "C:\EvoParkBE\DB\data"

# Cek status PostgreSQL
try {
    $pgStatus = & $pgCtl status -D $dataDir
    if ($pgStatus -match "server is running") {
        Write-Host "[INFO] PostgreSQL sedang berjalan."
    } elseif ($pgStatus -match "no server running") {
        Write-Host "[WARNING] PostgreSQL TIDAK berjalan."
    } else {
        Write-Host "[INFO] Status tidak dapat dipastikan:"
        Write-Host $pgStatus
    }
} catch {
    Write-Host "[ERROR] Gagal mengecek status PostgreSQL."
    Write-Host $_.Exception.Message
}

Start-Sleep -Seconds 1  # Tunggu sebentar sebelum tutup window
