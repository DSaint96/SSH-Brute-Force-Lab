# Task 7 - Run in Windows PowerShell (Admin) on the TARGET.
# Open the SSH server config, paste in the lines from
# config/sshd_config_hardening.txt ABOVE the "Match Group administrators"
# block, save, then restart the service.

# 1) Open the SSH server config in Notepad
notepad C:\ProgramData\ssh\sshd_config

# 2) After saving your changes, TEST the config for typos before restarting
sshd -t

# 3) If sshd -t returns nothing (no errors), apply the changes
Restart-Service sshd

# 4) Confirm the service came back up
Get-Service sshd
