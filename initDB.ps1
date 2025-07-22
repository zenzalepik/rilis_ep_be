# Path tool
$initdb   = "C:\EvoParkBE\DB\pgsql\bin\initdb.exe"
$dataDir  = "C:\EvoParkBE\DB\data"
$pwFile   = "C:\EvoParkBE\DB\pw.txt"

# Simpan password user postgres (kalau belum ada)
if (-Not (Test-Path $pwFile)) {
    Set-Content -Path $pwFile -Value "90909090"
    Write-Host "[INFO] File password dibuat: $pwFile"
}

# Inisialisasi folder data
Write-Host "`n[INFO] Inisialisasi folder data PostgreSQL..."
try {
    & $initdb -D $dataDir -U postgres -A password --pwfile=$pwFile
    Write-Host "[SUCCESS] Folder data berhasil dibuat dan disiapkan: $dataDir"
} catch {
    Write-Host "[ERROR] Gagal inisialisasi folder data. $_"
}
