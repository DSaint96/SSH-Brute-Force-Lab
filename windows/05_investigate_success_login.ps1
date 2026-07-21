# Task 6 - Run in Windows PowerShell (Admin) on the TARGET.
# Pulls successful logon events (Event ID 4624) to assess compromise -
# which account the attacker actually got into, and from where.

Get-WinEvent -FilterHashtable @{ LogName='Security'; Id=4624 } -MaxEvents 25 |
    Select-Object TimeCreated, Id,
        @{Name='Account'; Expression={ $_.Properties[5].Value }},
        @{Name='SourceIP'; Expression={ $_.Properties[18].Value }} |
    Format-Table -AutoSize
