#!/bin/bash

set -e

echo "[Security] Installing packages..."

sudo apt install -y \
  ufw \
  fail2ban \
  unattended-upgrades

echo "[Security] Configuring firewall..."

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp

sudo ufw --force enable

echo "[Security] Enabling fail2ban..."

sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "[Security] Enabling unattended upgrades..."

sudo dpkg-reconfigure -f noninteractive unattended-upgrades

echo "[Security] Done."
