# Task 1 - Run in Windows PowerShell (Admin) on the TARGET (10.0.0.7).
# Confirms the SSH listener is up and reachable.

Test-NetConnection -ComputerName 10.0.0.7 -Port 22
