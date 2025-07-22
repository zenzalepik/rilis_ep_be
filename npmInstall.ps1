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
