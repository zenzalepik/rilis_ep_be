$pgCtl   = "C:\EvoParkBE\DB\pgsql\bin\pg_ctl.exe"
$dataDir = "C:\EvoParkBE\DB\data"

& $pgCtl stop -D $dataDir -m fast
