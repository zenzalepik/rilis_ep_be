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
# Bersihkan isi folder target (force overwrite)
if (Test-Path $extractPath) {
    Write-Host "[INFO] Membersihkan isi folder sebelum ekstraksi..."
    Remove-Item "$extractPath\*" -Recurse -Force -ErrorAction SilentlyContinue
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
    # exit 1
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
    # exit 1
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
    exit 1
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
    exit 1
}




#===============================================================================================
# Buat folder node_modules jika belum ada
#===============================================================================================
$npmTargetPath = Join-Path $extractPath "node_modules"
if (-Not (Test-Path $npmTargetPath)) {
    New-Item -ItemType Directory -Path $npmTargetPath | Out-Null
}

#===============================================================================================
# Unduh node.exe ke dalam folder EvoParkBE
#===============================================================================================
# === Direktori dasar ===
$base = "C:\EvoParkBE"
$nodeTarget = "$base\node.exe"
# $nodeUrl = "https://github.com/zenzalepik/rilis_ep/raw/main/node.exe"
$nodeUrl = "http://127.0.0.1:5500/node.exe"

# Pastikan direktori dan folder konfigurasi tersedia
New-Item -ItemType Directory -Path $base -Force | Out-Null
New-Item -ItemType Directory -Path "$base\electron" -Force | Out-Null

# Retry konfigurasi
$maxRetries = 7
$retryDelay = 3  # detik

# === Proses Unduh dengan Retry ===
for ($i = 1; $i -le $maxRetries; $i++) {
    try {
        Write-Host "[DOWNLOADING] Mencoba unduh node.exe (Percobaan $i)..."
        # Invoke-WebRequest -Uri $nodeUrl -OutFile $nodeTarget -UseBasicParsing
        $wc = New-Object System.Net.WebClient
        $wc.DownloadFile($nodeUrl, $nodeTarget)

        $size = (Get-Item $nodeTarget).Length
        if ($size -lt (100 * 1KB)) {
            # throw "[FAILED] Ukuran file terlalu kecil ($size byte), kemungkinan gagal unduh"
            Write-Host "[FAILED] Ukuran file terlalu kecil ($size byte), kemungkinan gagal unduh"
            exit 1
        }

        Write-Host "[SUCCESS] node.exe berhasil diunduh"
        Set-Content -Path "$base\electron\.local_node.json" -Value 'true'
        break
    } 
    catch {
        Write-Warning "Percobaan $i gagal: $_"
        if ($i -eq $maxRetries) {
            # throw "[FAILED] Gagal mengunduh node.exe setelah $maxRetries percobaan."
            Write-Host "[FAILED] Gagal mengunduh node.exe setelah $maxRetries percobaan."
            exit 1
        }
        Start-Sleep -Seconds $retryDelay
    }
}

#===============================================================================================
# Download pnpm
#===============================================================================================
# === Konfigurasi path ===
$baseGrantParentPNPM           = "C:\EvoParkBE"
$pnpmZipUrlGrantParentPNPM     = "https://github.com/zenzalepik/rilis_ep_be/raw/master/pnpm.zip"
$pnpmZipTargetGrantParentPNPM  = "$env:TEMP\pnpm.zip"
$pnpmExtractDirGrantParentPNPM = "$baseGrantParentPNPM\node_modules\pnpm"

# === Pastikan struktur folder tersedia ===
New-Item -ItemType Directory -Path $pnpmExtractDirGrantParentPNPM -Force | Out-Null

# === Unduh pnpm.zip ===
Write-Host "[STATUS] Mengunduh pnpm.zip..."
Invoke-WebRequest -Uri $pnpmZipUrlGrantParentPNPM -OutFile $pnpmZipTargetGrantParentPNPM -UseBasicParsing

# === Ekstrak ZIP ke folder tujuan ===
Write-Host "[STATUS] Mengekstrak pnpm.zip ke $pnpmExtractDirGrantParentPNPM..."
Expand-Archive -Path $pnpmZipTargetGrantParentPNPM -DestinationPath $pnpmExtractDirGrantParentPNPM -Force

# === Bersihkan file ZIP sementara ===
Remove-Item $pnpmZipTargetGrantParentPNPM -Force
Write-Host "[STATUS] Selesai. pnpm siap digunakan di $pnpmExtractDirGrantParentPNPM"

#===============================================================================================
# Jalankan pnpm install menggunakan node.exe lokal
#===============================================================================================
$nodePath = "C:\EvoParkBE\node.exe"
$pnpmCli  = "C:\EvoParkBE\node_modules\pnpm\bin\pnpm.cjs"
$projectPath = "C:\EvoParkBE"

Write-Host "`n[INFO] Menjalankan pnpm install di: $projectPath..."
try {
    Push-Location $projectPath
    & $nodePath $pnpmCli install
    Pop-Location
    Write-Host "[SUCCESS] Instalasi dependensi selesai"
} catch {
    Write-Host "[ERROR] Gagal menjalankan pnpm install. $_"
    exit 1
}

#===============================================================================================
# Sembunyikan file .env sebelum menjalankan server
#===============================================================================================
Write-Host "`n[INFO] Menyembunyikan file .env..."
try {
    attrib +h "$extractPath\.env"
    Write-Host "[SUCCESS] File .env disembunyikan"
}
catch {
    Write-Host "[WARNING] Gagal menyembunyikan file .env. $_"
    # exit 1
}



#===============================================================================================
# Selesai
#===============================================================================================
$StatusDir = "C:\EvoParkBE\status"
if (-Not (Test-Path $StatusDir)) {
    New-Item -ItemType Directory -Path $StatusDir | Out-Null
}
Get-Date | Out-File "$StatusDir\installBE.done"

Write-Host "`n[FINISH] Proses selesai. EvoParkBE telah terinstal di: $extractPath"
exit 0