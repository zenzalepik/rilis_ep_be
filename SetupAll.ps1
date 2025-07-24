# ==================================================================================
# ==================================================================================
# ==================================================================================
# SETUP BACKEND — PowerShell Modular Installer (Tanpa Edit Modul)
# ==================================================================================
# ==================================================================================
# ==================================================================================


#
#
#

# ==================================================================================
# ========== Eksekusi Modular ==========
# ==================================================================================
$StatusDir = "C:\EvoParkBE\status"
# $StatusDir = "$PSScriptRoot\.status"
# $LogFile   = "$PSScriptRoot\setup.log"
$LogFile = "$StatusDir\setup.log"
$Steps = @(
    @{ File = "installBE.bat"; Key = "installBE" },
    @{ File = "installDB.bat"; Key = "installDB" },
    @{ File = "initDB.bat"; Key = "initDB" },
    @{ File = "StartPostgres.bat"; Key = "StartPostgres" },
    @{ File = "StatusPostgres.bat"; Key = "StatusPostgres" },
    @{ File = "settingDB.bat"; Key = "settingDB" },
    @{ File = "importDB.bat"; Key = "importDB" },
    @{ File = "startServer.bat"; Key = "startServer" }
)

# ========== Inisialisasi ==========
if (-Not (Test-Path $StatusDir)) {
    New-Item -ItemType Directory -Path $StatusDir | Out-Null
}
"[STATUS] Setup dimulai: $(Get-Date)" | Out-File -FilePath $LogFile

# ========== Eksekusi Modular ==========
foreach ($step in $Steps) {
    $stepFile = Join-Path $StatusDir "$($step.Key).done"
    $stepLabel = $step.Key
    $stepPath = Join-Path $PSScriptRoot $step.File

    if ((Test-Path $stepFile) -and ($step["Key"] -ne "StatusPostgres")) {
    
        # if (Test-Path $stepFile) {
        "[STATUS] $stepLabel sudah selesai." | Out-File $LogFile -Append
        Write-Host "[STATUS] $stepLabel dilewati (sudah selesai)."
        continue
    }

    "[STATUS] Menjalankan tahap: $stepLabel" | Out-File $LogFile -Append
    Write-Host "[STATUS] Menjalankan $step.File ..."

    try {
        $process = Start-Process -FilePath $stepPath -Wait -PassThru -NoNewWindow
        if ($process.ExitCode -ne 0) {
            throw "[ERROR] Tahap $stepLabel gagal dengan kode: $($process.ExitCode)"
        }

        Get-Date | Out-File $stepFile
        "[STATUS] $stepLabel selesai." | Out-File $LogFile -Append
        Write-Host "[STATUS] $stepLabel selesai."
    }
    catch {
        "[ERROR] $stepLabel gagal: $_" | Out-File $LogFile -Append
        Write-Host "[ERROR] ERROR di $stepLabel. Proses dihentikan. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        Write-Host "[DEBUG] Exit code untuk $stepLabel = $($process.ExitCode) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        exit 1
    }
}



# ==================================================================================
# ========== Validasi installBE ==========
# ==================================================================================
# $installBEFlag = Join-Path $StatusDir "installBE.done"
# $targetFolder  = "C:\EvoParkBE"

# if (-Not (Test-Path $installBEFlag)) {
#     Write-Host "[STATUS] installBE belum berhasil. Menghapus folder: $targetFolder"
#     try {
#         Remove-Item -Path $targetFolder -Recurse -Force
#         Write-Host "[STATUS] Folder berhasil dihapus."
#     } catch {
#         Write-Host "[WARNING] Gagal menghapus folder: $_"
#     }
# }



"[STATUS] Semua tahapan selesai: $(Get-Date)" | Out-File $LogFile -Append
Write-Host "`n[STATUS] Semua proses instalasi backend selesai."


# ==================================================================================
# ===============Selesai============
# ==================================================================================
exit 0
