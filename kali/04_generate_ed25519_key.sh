#!/usr/bin/env bash
# Task 8 - Run on KALI. Generates an ed25519 key pair for key-based SSH auth (M1032).
# The public key (lab_key.pub) is copied to the Windows target's
# authorized_keys; the private key (lab_key) stays on the attacker/client.

ssh-keygen -t ed25519 -f ~/.ssh/lab_key -C "soc_analyst@lab"

echo "[*] Public key to install on the target:"
cat ~/.ssh/lab_key.pub
