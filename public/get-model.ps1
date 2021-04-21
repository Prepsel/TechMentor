function get-model {
    $model = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
    Write-Host "Your model is: $model" -ForegroundColor Red
    }

