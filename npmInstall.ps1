# STEP 4: Salin package_installer.json → package.json dan jalankan npm install
$base = "C:\EvoParkBE"
Copy-Item "$base\package_installer.json" "$base\package.json" -Force
Push-Location -Path $base
& "$base\dist\win-unpacked\resources\node.exe" "node_modules\npm\bin\npm-cli.js" install
Pop-Location