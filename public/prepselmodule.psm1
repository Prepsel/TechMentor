# Source functionslocated in the public module folder
Get-ChildItem -Path $PSScriptRoot\public\*.ps1 |
ForEach-Object {
    . $_.FullName
}