#!/bin/bash
# Parrot OS post-install setup — run once after the fresh install finishes.
# Draft: Yusuf, tell me what to add or remove before you run it.
set -e

echo "=== Updating package lists and upgrading (500 GB disk — space is not an issue) ==="
sudo apt update
sudo apt full-upgrade -y

echo "=== Installing core tools ==="
sudo apt install -y git curl wget python3-pip build-essential \
  testdisk gparted exiftool binwalk foremost hashcat john \
  nmap wireshark tshark

echo "=== Installing Ollama ==="
curl -fsSL https://ollama.com/install.sh | sh

echo "=== Optional: Volatility 3 (uncomment to install) ==="
# pip3 install --break-system-packages volatility3

echo "=== Optional: Autopsy (needs the Sleuth Kit .deb — download from sleuthkit.org) ==="
# sudo apt install -y ./autopsy-*.deb

echo "=== Cleaning up ==="
sudo apt autoremove -y
sudo apt clean

echo "Done. Reboot, then verify: ollama --version && nmap --version"
