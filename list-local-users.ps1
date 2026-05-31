# list-local-users.ps1
# Lists local user accounts on the device.

Get-LocalUser | Select-Object Name, Enabled, LastLogon
