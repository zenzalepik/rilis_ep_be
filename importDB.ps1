# =====================================================================================
# IMPORT DATABASE DARI GITHUB > importDB.ps1
# =====================================================================================

# Path ke psql portable
$psqlPath = "C:\EvoParkBE\DB\pgsql\bin\psql.exe"

# URL dan path lokal untuk file SQL
$sqlUrl = "https://github.com/zenzalepik/rilis_ep_be/raw/master/backup_evolusipark.sql"
$sqlFilePath = "$env:TEMP\backup_evolusipark.sql"

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

# 1. Download file SQL
Write-Host "[STATUS] Mengunduh file SQL dari $sqlUrl ..."
try {
    Invoke-WebRequest -Uri $sqlUrl -OutFile $sqlFilePath -UseBasicParsing
    Write-Host "[STATUS] File SQL berhasil diunduh ke: $sqlFilePath"
}
catch {
    Write-Host "[ERROR] Gagal mengunduh file SQL. $_"
    exit 1
}

# 2. Eksekusi import SQL
Write-Host "[STATUS] Mengimpor file SQL ke database: $dbName ..."
try {
    $env:PGPASSWORD = $dbPass
    & $psqlPath -h $dbHost -p $dbPort -U $dbUser -d $dbName -f $sqlFilePath
    Write-Host "[SUCCESS] Impor SQL selesai."
}
catch {
    Write-Host "[ERROR] Gagal mengimpor file SQL. $_"
    exit 1
}
finally {
    Remove-Item Env:PGPASSWORD
}

# 3. Hapus file SQL
if (Test-Path $sqlFilePath) {
    try {
        Remove-Item -Path $sqlFilePath -Force
        Write-Host "[STATUS] File SQL telah dihapus: $sqlFilePath"
    }
    catch {
        Write-Host "[WARNING] Gagal menghapus file SQL: $_"
    }
}

#===============================================================================================
# SELESAI
#===============================================================================================
exit 0