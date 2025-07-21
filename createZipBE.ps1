# ==================== Konfigurasi ====================
$SourceDir = "D:\Github\evolusipark_backend"
$TempDir = "$env:TEMP\EvoParkBE_temp"
$ZipName = "EvoParkBE.zip"
$ZipFinal = "D:\Github\rilis_ep_be\$ZipName"

# ==================== Persiapan ======================
Write-Host "`n[SOURCE] Folder sumber: $SourceDir"
Write-Host "[TEMP] Folder sementara: $TempDir"
Write-Host "[TARGET] Arsip ZIP akhir: $ZipFinal"

# Bersihkan folder sementara
Remove-Item -Recurse -Force $TempDir -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $TempDir | Out-Null

# ==================== Salin isi proyek ====================
robocopy $SourceDir $TempDir /E /XD "$SourceDir\.git" "$SourceDir\node_modules"

# ==================== Hapus ZIP lama ====================
if (Test-Path $ZipFinal) {
    Remove-Item $ZipFinal -Force
    Write-Host "[CLEAN] ZIP lama dihapus dari folder rilis"
}

# ==================== Buat arsip ZIP ====================
Compress-Archive -Path "$TempDir\*" -DestinationPath $ZipFinal -Force
Write-Host "[SUCCESS] ZIP berhasil dibuat: $ZipFinal"

# ==================== Hapus folder sementara ====================
Remove-Item -Recurse -Force $TempDir
Write-Host "[TEMP] Folder sementara dihapus"

# ==================== Commit & Push ke GitHub ====================
Set-Location "D:\Github\rilis_ep_be"
git add $ZipName
git commit -m "UPDATE: Auto-zip EvoParkBE terbaru"
git push
Write-Host "[GIT] ZIP berhasil dikirim ke GitHub"

# ==================== Bersih-bersih ZIP ====================
Remove-Item $ZipFinal -Force
Write-Host "[CLEANUP] ZIP dihapus kembali setelah push"

# ==================== Selesai ====================
Write-Host "`n[FINISH] Proses selesai!"
