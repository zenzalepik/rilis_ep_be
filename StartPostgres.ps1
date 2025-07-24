#=============================================================================================
#=============================================================================================
# START POSTGRES > StartPostgres.ps1
#=============================================================================================
#=============================================================================================
#$pgCtl = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
#$dataDir = "C:\EvoParkBE\DB\data"
#
## Cek jika PostgreSQL belum berjalan
#$pgStatus = & $pgCtl status -D $dataDir
#if ($pgStatus -match "no server running") {
#    Write-Host "[INFO] PostgreSQL belum aktif. Menjalankan server..."
#    & $pgCtl start -D $dataDir -N "EvoParkPG" -w
#    Write-Host "[SUCCESS] PostgreSQL berhasil dijalankan."
#    exit 0
#} else {
#    Write-Host "[INFO] PostgreSQL sudah aktif."
#    exit 0
#}



$pgCtl   = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
$dataDir = "C:\EvoParkBE\DB\data"

& $pgCtl start -D $dataDir -m fast
Write-Host "[DB DINYALAKAN]"
exit 0