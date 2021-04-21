function get-computername {
    $cn=$env:COMPUTERNAME
Write-Host "Your Computername is: $cn" -ForegroundColor Red
}