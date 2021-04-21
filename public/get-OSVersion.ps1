
function get-OSVersion {
$OS = (Get-CimInstance -ClassName Win32_OperatingSystem).caption
Write-Host "Your operating system is: $OS" -ForegroundColor Green
}