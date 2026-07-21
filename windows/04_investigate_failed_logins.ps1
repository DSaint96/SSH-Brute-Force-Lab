# Task 5 - Run in Windows PowerShell (Admin) on the TARGET.
# Pulls failed logon events (Event ID 4625) - the fingerprint of the brute force.

Get-WinEvent -FilterHashtable @{ LogName='Security'; Id=4625 } -MaxEvents 25 |
    Select-Object TimeCreated, Id,
        @{Name='Account'; Expression={ $_.Properties[5].Value }},
        @{Name='SourceIP'; Expression={ $_.Properties[19].Value }} |
    Format-Table -AutoSize
