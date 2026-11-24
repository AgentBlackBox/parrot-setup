# parrot-setup

Post-install setup script for Parrot OS (fresh install).

Run once in a terminal on the Parrot VM:

```bash
chmod +x parrot-post-install.sh
./parrot-post-install.sh
```

What it does:
- Updates package lists and full-upgrades the system
- Installs core tools: git, curl, wget, python3-pip, build-essential, testdisk, gparted, exiftool, binwalk, foremost, hashcat, john, nmap, wireshark, tshark
- Installs Ollama
- Cleans up with autoremove and clean

Optional (commented out in the script): Volatility 3 and Autopsy (needs the Sleuth Kit .deb from sleuthkit.org).

Reboot after it finishes, then verify with `ollama --version && nmap --version`.
