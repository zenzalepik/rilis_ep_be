#=============================================================================================
#=============================================================================================
# START POSTGRES > StartPostgres.ps1
#=============================================================================================
#=============================================================================================

# $pgCtl   = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
# $dataDir = "C:\EvoParkBE\DB\data"


# Start-Process -FilePath $pgCtl -ArgumentList "start", "-D", "$dataDir", "-m", "fast" -WindowStyle Hidden
# Start-Sleep -Seconds 2
# Start-Process -FilePath "$PSScriptRoot\StatusPostgres.bat"
# exit 0


#=============================================================================================
#=============================================================================================

$pgCtl   = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
$dataDir = "C:\EvoParkBE\DB\data"

# Fungsi untuk cek status
function Cek-StatusPostgres {
    $statusOutput = & "$PSScriptRoot\StatusPostgres.bat"
    return $statusOutput
}
# Pertama kali nyalakan Postgres
Start-Process -FilePath $pgCtl -ArgumentList "start", "-D", "$dataDir", "-m", "fast" -WindowStyle Hidden
Start-Sleep -Seconds 2

# Cek status
$statusResult = Cek-StatusPostgres
Write-Host "[DEBUG] StatusPostgres output: $statusResult"

# Jika status bukan "sedang berjalan", coba nyalakan ulang
if ($statusResult -notmatch "PostgreSQL sedang berjalan") {
    Write-Host "[INFO] Postgres belum aktif, mencoba nyalakan ulang..."

    Start-Process -FilePath $pgCtl -ArgumentList "start", "-D", "$dataDir", "-m", "fast" -WindowStyle Hidden
    Start-Sleep -Seconds 2

    $statusResult = Cek-StatusPostgres
    Write-Host "[DEBUG] Status setelah ulang: $statusResult"

    if ($statusResult -notmatch "PostgreSQL sedang berjalan") {
        Write-Host "[ERROR] Gagal menyalakan Postgres setelah dua percobaan."
        exit 1
    } else {
        Write-Host "[INFO] Postgres berhasil menyala setelah percobaan kedua."
        exit 0
    }
} else {
    Write-Host "[INFO] Postgres sudah aktif."
    exit 0
}

exit 0
