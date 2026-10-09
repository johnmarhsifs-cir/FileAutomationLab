$cutoffDate = (Get-Date).AddDays(-7)
$files = Get-ChildItem -Path $PSScriptRoot -File | Where-Object { $_.LastWriteTime -lt $cutoffDate }

foreach ($file in $files) {
    Copy-Item -Path $file.FullName -Destination "$PSScriptRoot\copiedfiles" -WhatIf
}
