# Task 2 - Run in Windows PowerShell (Admin) on the TARGET.
# Installs the OpenSSH Server feature, starts it, and sets it to auto-start.

Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

# Confirm the firewall rule exists for port 22
Get-NetFirewallRule -Name *ssh*
Get-Service sshd
