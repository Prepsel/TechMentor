function Get-prepselpcInfo{
    # ComputerSystem info
    $CompInfo = Get-CimInstance Win32_ComputerSystem 
    # OS info
    $OSInfo = Get-CimInstance Win32_OperatingSystem 
    # Serial No
    $BiosInfo = Get-CimInstance Win32_BIOS 

    # Build objects based on computer information
    $diskfreespace = get-volume -DriveLetter c | Select-Object -ExpandProperty SizeRemaining
    [pscustomobject]@{
        ComputerName = $CompInfo.Name
        Domain = $CompInfo.Domain
        OperatingSystem = $OSInfo.Caption
        Model = $CompInfo.Model
        MachineSN = $BiosInfo.SerialNumber
        Version = $OSInfo.Version
        BuildNumber = $OSInfo.BuildNumber
        OSArchitecture = $OSinfo.OSArchitecture
        PowerShellVersion = $PSVersionTable.psversion
        DiskFreeSpace = "" +[math]::Round($diskfreespace /1GB,2) + " GB"
    }
}