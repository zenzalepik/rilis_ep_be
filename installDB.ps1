$zipUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/postgresql-17.5-3-windows-x64-binaries.zip"
$zipFile = "$env:TEMP\postgresql-17.5-3-windows-x64-binaries.zip"
$extractPath = "C:\EvoParkBE\DB"

Write-Host "`n[INFO] Mengunduh file EvoParkBE.zip..."
try {
    Invoke-WebRequest -Uri $zipUrl -OutFile $zipFile -UseBasicParsing
    Write-Host "[SUCCESS] Unduh DB selesai: $zipFile"
}
catch {
    Write-Host "[ERROR] Gagal mengunduh file. $_"
    exit 1
}

#===============================================================================================
# Cek dan buat folder target jika belum ada
#===============================================================================================
if (-Not (Test-Path $extractPath)) {
    New-Item -ItemType Directory -Path $extractPath | Out-Null
}

Write-Host "`n[INFO] Mengekstrak file ke: $extractPath..."
try {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipFile, $extractPath)
    Write-Host "[SUCCESS] Ekstraksi selesai"
}
catch {
    Write-Host "[ERROR] Gagal mengekstrak file. $_"
    exit 1
}

#===============================================================================================
# Hapus file ZIP setelah ekstrak
#===============================================================================================
Write-Host "`n[INFO] Menghapus file ZIP sementara..."
try {
    Remove-Item $zipFile -Force
    Write-Host "[SUCCESS] File ZIP telah dihapus"
}
catch {
    Write-Host "[WARNING] Gagal menghapus file ZIP. $_"
}

#===============================================================================================
# Set folder menjadi tersembunyi
#===============================================================================================
Write-Host "`n[INFO] Menyembunyikan folder: $extractPath..."
try {
    attrib +h "$extractPath"
    Write-Host "[SUCCESS] Folder disembunyikan"
}
catch {
    Write-Host "[WARNING] Gagal menyembunyikan folder. $_"
}