#===============================================================================================
# Konfigurasi
#===============================================================================================
$zipUrl = "https://github.com/zenzalepik/rilis_ep_be/raw/master/EvoParkBE.zip"
$zipFile = "$env:TEMP\EvoParkBE.zip"
$extractPath = "C:\EvoParkBE"

Write-Host "`n[INFO] Mengunduh file EvoParkBE.zip..."
try {
    Invoke-WebRequest -Uri $zipUrl -OutFile $zipFile -UseBasicParsing
    Write-Host "[SUCCESS] Unduhan selesai: $zipFile"
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

#===============================================================================================
# Unduh file .env
#===============================================================================================
$envUrl = "https://github.com/zenzalepik/rilis_ep_be/raw/master/.env"
$envTarget = Join-Path $extractPath ".env"

Write-Host "`n[INFO] Mengunduh file .env..."
try {
    Invoke-WebRequest -Uri $envUrl -OutFile $envTarget -UseBasicParsing
    Write-Host "[SUCCESS] .env berhasil diunduh ke: $envTarget"
}
catch {
    Write-Host "[ERROR] Gagal mengunduh file .env. $_"
}

#===============================================================================================
# Unduh file package.json
#===============================================================================================
$pkgUrl = "https://github.com/zenzalepik/rilis_ep_be/raw/master/package.json"
$pkgTarget = Join-Path $extractPath "package.json"

Write-Host "`n[INFO] Mengunduh file package.json..."
try {
    Invoke-WebRequest -Uri $pkgUrl -OutFile $pkgTarget -UseBasicParsing
    Write-Host "[SUCCESS] package.json berhasil diunduh ke: $pkgTarget"
}
catch {
    Write-Host "[ERROR] Gagal mengunduh file package.json. $_"
}


#===============================================================================================
# Unduh npm.zip
#===============================================================================================
$npmZipUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/npm.zip"
$npmZipPath = "$env:TEMP\npm.zip"
$npmTargetPath = Join-Path $extractPath "node_modules"
Write-Host "`n[INFO] Mengunduh file npm.zip..."
try {
    Invoke-WebRequest -Uri $npmZipUrl -OutFile $npmZipPath -UseBasicParsing
    Write-Host "[SUCCESS] npm.zip berhasil diunduh"
} catch {
    Write-Host "[WARNING] Gagal mengunduh file npm.zip. $_"
}

#===============================================================================================
# Buat folder node_modules jika belum ada
#===============================================================================================
if (-Not (Test-Path $npmTargetPath)) {
    New-Item -ItemType Directory -Path $npmTargetPath | Out-Null
}

#===============================================================================================
# Ekstrak npm.zip ke folder node_modules
#===============================================================================================
Write-Host "`n[INFO] Mengekstrak npm.zip ke folder node_modules..."
try {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($npmZipPath, $npmTargetPath)
    Write-Host "[SUCCESS] Ekstraksi npm.zip selesai"
} catch {
    Write-Host "[WARNING] Gagal mengekstrak npm.zip. $_"
}

#===============================================================================================
# Hapus file npm.zip
#===============================================================================================
Write-Host "`n[INFO] Menghapus file npm.zip..."
try {
    Remove-Item $npmZipPath -Force
    Write-Host "[SUCCESS] File npm.zip telah dihapus"
} catch {
    Write-Host "[WARNING] Gagal menghapus file npm.zip. $_"
}

#===============================================================================================
# Unduh node.exe ke dalam folder EvoParkBE
#===============================================================================================
# === Direktori dasar ===
$base = "C:\EvoParkBE"
$nodeTarget = "$base\node.exe"
$nodeUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/node.exe"

# Pastikan direktori dan folder konfigurasi tersedia
New-Item -ItemType Directory -Path $base -Force | Out-Null
New-Item -ItemType Directory -Path "$base\electron" -Force | Out-Null

# Retry konfigurasi
$maxRetries = 7
$retryDelay = 3  # detik

# === Proses Unduh dengan Retry ===
for ($i = 1; $i -le $maxRetries; $i++) {
    try {
        Write-Host "🚚 Mencoba unduh node.exe (Percobaan $i)..."
        Invoke-WebRequest -Uri $nodeUrl -OutFile $nodeTarget -UseBasicParsing

        $size = (Get-Item $nodeTarget).Length
        if ($size -lt (100 * 1KB)) {
            throw "❌ Ukuran file terlalu kecil ($size byte), kemungkinan gagal unduh"
        }

        Write-Host "✅ node.exe berhasil diunduh"
        Set-Content -Path "$base\electron\.local_node.json" -Value 'true'
        break
    } 
    catch {
        Write-Warning "Percobaan $i gagal: $_"
        if ($i -eq $maxRetries) {
            throw "❌ Gagal mengunduh node.exe setelah $maxRetries percobaan."
        }
        Start-Sleep -Seconds $retryDelay
    }
}

#===============================================================================================
# Jalankan npm install jika file node.exe dan npm-cli.js tersedia
#===============================================================================================
$npmCliPath = Join-Path $extractPath "node_modules\npm\bin\npm-cli.js"
if ((Test-Path $nodeExePath) -and (Test-Path $npmCliPath)) {
    Write-Host "`n[INFO] Menjalankan npm install..."
    try {
        Push-Location $extractPath
        & $nodeExePath $npmCliPath install
        Pop-Location
        Write-Host "[SUCCESS] npm install selesai dijalankan"
    } catch {
        Pop-Location
        Write-Host "[ERROR] Gagal menjalankan npm install. $_"
    }
} else {
    Write-Host "[WARNING] Tidak dapat menjalankan npm install karena file tidak ditemukan"
}



#===============================================================================================
# Selesai
#===============================================================================================
Write-Host "`n[FINISH] Proses selesai. EvoParkBE telah terinstal di: $extractPath"
