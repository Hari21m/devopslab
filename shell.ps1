$disk = Get-PSDrive C
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "User: $env:USERNAME"
Write-Host "Date: $(Get-Date)"
Write-Host ("Free space on C: {0} GB" -f [math]::Round($disk.Free/1GB,1))