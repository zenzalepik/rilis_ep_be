#=============================================================================================
#=============================================================================================
# SETTING DATABASE > settingDB.ps1
#=============================================================================================
#=============================================================================================


# Path ke psql portable
$psqlPath = "C:\EvoParkBE\DB\pgsql\bin\psql.exe"

# Load environment dari file .env
$envContent = Get-Content ".env"
$envMap = @{}
foreach ($line in $envContent) {
    if ($line -match "^\s*([^#=]+)\s*=\s*(.+)$") {
        $envMap[$matches[1].Trim()] = $matches[2].Trim()
    }
}

# Variabel dari env
$dbUser = $envMap["DB_USERNAME"]
$dbPass = $envMap["DB_PASSWORD"]
$dbName = $envMap["DB_NAME"]
$dbHost = $envMap["DB_HOST"]
$dbPort = $envMap["DB_PORT"]

# Query create DB
$dbCreateQuery = "CREATE DATABASE $dbName;"

# Eksekusi query menggunakan psql
Write-Host "`n[INFO] Membuat database: $dbName"
try {
    $env:PGPASSWORD = $dbPass
    & $psqlPath -h $dbHost -p $dbPort -U $dbUser -c $dbCreateQuery
    Write-Host "[SUCCESS] Database berhasil dibuat: $dbName"
}
catch {
    Write-Host "[ERROR] Gagal membuat database. $_"
    exit 1
}
finally {
    Remove-Item Env:PGPASSWORD
}

exit 0