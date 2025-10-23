# script.ps1
param (
    [string]$Env = "Development"
)

Write-Host "Hello from PowerShell! Running in $Env environment."

Write-Host " Première exécution de github Action"

$Username = "monuser"
$Password = "MonPasswordSuperSecret123!"  # <-- VULN ICI : Secret en clair !

# Création credential
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential($Username, $SecurePassword)
