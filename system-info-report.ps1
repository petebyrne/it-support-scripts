# system-info-report.ps1
# Collects basic system information.

$os = Get-CimInstance Win32_OperatingSystem
$computer = Get-CimInstance Win32_ComputerSystem

[PSCustomObject]@{
    ComputerName = $env:COMPUTERNAME
    LoggedInUser = $env:USERNAME
    Manufacturer = $computer.Manufacturer
    Model = $computer.Model
    OperatingSystem = $os.Caption
    OSVersion = $os.Version
    LastBootTime = $os.LastBootUpTime
}
