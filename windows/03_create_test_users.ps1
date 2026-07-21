# Task 3 - Run in Windows PowerShell (Admin) on the TARGET.
# Creates the three lab test accounts used throughout the project.
# Passwords are lab-only demo values.

$accounts = @{
    "roman_reigns" = "Passwords123"
    "kratos_gow"   = "Passwords456"
    "soc_analyst"  = "Passwords789"
}

foreach ($name in $accounts.Keys) {
    $pw = ConvertTo-SecureString $accounts[$name] -AsPlainText -Force
    New-LocalUser -Name $name -Password $pw -FullName $name -Description "SSH lab test account"
}

Get-LocalUser | Where-Object { $accounts.Keys -contains $_.Name }
