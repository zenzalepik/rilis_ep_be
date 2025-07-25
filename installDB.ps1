# Konfigurasi
# $downloadUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/postgresql-17.5-3-windows-x64-binaries.zip"
$downloadUrl = "http://127.0.0.1:5500/postgresql-17.5-3-windows-x64-binaries.zip"
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
# try {
#     $wc = New-Object System.Net.WebClient
#     $wc.DownloadFile($downloadUrl, $zipFilePath)

#     $size = (Get-Item $zipFilePath).Length
#     if ($size -lt 100KB) {
#         throw "[ERROR] File ZIP terlalu kecil ($size byte), kemungkinan gagal unduh."
#     }

#     Write-Host "[STATUS] Unduhan selesai: $zipFilePath"
# } catch {
#     Write-Host "[ERROR] Gagal mengunduh file ZIP. $_"
#     exit 1
# }
# 2. Download file ZIP dengan retry
$maxRetries = 7
$retryDelay = 3 # dalam detik
$wc = New-Object System.Net.WebClient

for ($i = 1; $i -le $maxRetries; $i++) {
    try {
        Write-Host "[DOWNLOADING] Percobaan $i untuk unduh PostgreSQL ZIP..."
        $wc.DownloadFile($downloadUrl, $zipFilePath)

        $size = (Get-Item $zipFilePath).Length
        if ($size -lt (100KB)) {
            Write-Host "[FAILED] Ukuran file terlalu kecil ($size byte), kemungkinan gagal unduh."
            throw
        }

        Write-Host "[SUCCESS] Unduhan selesai: $zipFilePath"
        break
    } catch {
        Write-Host "[WARNING] Unduhan gagal (Percobaan $i): $($_.Exception.Message)"
        if ($i -eq $maxRetries) {
            Write-Host "[ERROR] Gagal mengunduh file ZIP setelah $maxRetries percobaan."
            exit 1
        }
        Start-Sleep -Seconds $retryDelay
    }
}




# 3. Ekstrak file ZIP
Add-Type -AssemblyName System.IO.Compression.FileSystem

Write-Host "[STATUS] Mengekstrak file ke '$extractPath'..."
try {
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $extractPath)
    Write-Host "[STATUS] Ekstraksi selesai."
} catch {
    Write-Host "[ERROR] Gagal mengekstrak ZIP. $_"
    exit 1
}


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
