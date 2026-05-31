# network-diagnostics.ps1
# Displays basic network configuration information.

Write-Host "Network Adapter Information"
Get-NetIPConfiguration | Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer

Write-Host "`nTesting connectivity to common DNS server..."
Test-Connection 8.8.8.8 -Count 4

Write-Host "`nTesting DNS resolution..."
Resolve-DnsName google.com
