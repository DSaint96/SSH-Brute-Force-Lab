#!/usr/bin/env bash
# Task 3-4 - Run on KALI. Builds the small demo wordlists used by Hydra.
# Kept intentionally short for a controlled lab demonstration.

printf 'admin\nroot\nroman_reigns\nadministrator\nkratos_gow\nsoc_analyst\nguest\nftpuser\n' > usernames.txt
printf 'password\n123456\nPasswords123\nadmin\nletmein\nPasswords456\nPasswords789\nqwerty\n' > passwords.txt

echo "[*] Wordlists written:"
wc -l usernames.txt passwords.txt
