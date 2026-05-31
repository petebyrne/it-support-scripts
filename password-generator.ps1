# password-generator.ps1
# Generates a random password for lab/testing use.

$length = 16
$characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!£$%^&*()-_=+'
$password = -join ((1..$length) | ForEach-Object { $characters[(Get-Random -Maximum $characters.Length)] })

Write-Host "Generated password:"
Write-Host $password
