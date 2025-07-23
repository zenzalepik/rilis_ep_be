# Konfigurasi
$downloadUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/postgresql-17.5-3-windows-x64-binaries.zip"
$zipFilePath = "$env:TEMP\postgresql.zip"
$extractPath = "C:\EvoParkBE\DB"
$psqlExePath = Join-Path $extractPath "pgsql\bin\psql.exe"

# 0. Cek apakah PostgreSQL sudah terinstal
if (Test-Path -Path $psqlExePath) {
    Write-Host "[STATUS] PostgreSQL sudah terinstal di '$psqlExePath'."
    # return
    exit 0
}

# 1. Cek dan buat folder tujuan jika belum ada
if (!(Test-Path -Path $extractPath)) {
    New-Item -ItemType Directory -Path $extractPath -Force | Out-Null
    Write-Host "[STATUS] Folder '$extractPath' berhasil dibuat."
} else {
    Write-Host "[STATUS] Folder '$extractPath' sudah ada."
}

# 2. Download file ZIP
Write-Host "[STATUS] Mengunduh file dari $downloadUrl..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipFilePath
Write-Host "[STATUS] Unduhan selesai: $zipFilePath"

# 3. Ekstrak file ZIP
Write-Host "[STATUS] Mengekstrak file ke '$extractPath'..."
Expand-Archive -Path $zipFilePath -DestinationPath $extractPath -Force
Write-Host "[STATUS] Ekstraksi selesai."

# 4. Hapus file ZIP
# Write-Host "[STATUS] Menghapus file ZIP..."
# Remove-Item -Path $zipFilePath -Force
# Write-Host "[STATUS] File ZIP berhasil dihapus."

# 5. Verifikasi ulang
if (Test-Path -Path $psqlExePath) {
    Write-Host "[STATUS] PostgreSQL berhasil diinstal di '$psqlExePath'."
    exit 0
} else {
    Write-Host "[STATUS] Gagal memastikan psql.exe setelah ekstraksi."
    exit 1
}
