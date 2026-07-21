#!/usr/bin/env bash
# Task 1 - Run on KALI (attacker, 10.0.0.6).
# Confirms the Windows target is reachable and the SSH port (22) is open.

TARGET=10.0.0.7

echo "[*] Pinging target..."
ping -c 4 "$TARGET"

echo "[*] Checking SSH port with nmap..."
nmap -p 22 "$TARGET"
