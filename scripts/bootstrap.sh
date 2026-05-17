#!/bin/bash

set -e

echo "========================================"
echo " Homelab Bootstrap Script"
echo "========================================"

echo "[1/10] Updating system..."
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y

echo "[2/10] Installing base packages..."
sudo apt install -y \
  nano \
  vim \
  curl \
  wget \
  git \
  htop \
  unzip \
  tree \
  ca-certificates \
  gnupg \
  lsb-release \
  ufw \
  fail2ban \
  unattended-upgrades \
  docker.io \
  docker-compose

echo "[3/10] Enabling Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "[4/10] Adding current user to docker group..."
sudo usermod -aG docker $USER

echo "[5/10] Configuring Docker daemon..."

sudo mkdir -p /etc/docker

sudo tee /etc/docker/daemon.json > /dev/null <<EOF
{
  "live-restore": true,
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "3"
  }
}
EOF

sudo systemctl restart docker

echo "[6/10] Configuring UFW firewall..."

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp

sudo ufw --force enable

echo "[7/10] Enabling Fail2ban..."

sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "[8/10] Enabling unattended upgrades..."

sudo dpkg-reconfigure -f noninteractive unattended-upgrades

echo "[9/10] Creating homelab directory structure..."

mkdir -p ~/homelab/{compose,data,configs,scripts,backups}

mkdir -p ~/homelab/compose/{cloudflare,homepage,uptime-kuma}

echo "[10/10] Bootstrap complete."

echo ""
echo "========================================"
echo " Bootstrap finished successfully"
echo "========================================"
echo ""
echo "IMPORTANT:"
echo "- Logout/login again for docker group"
echo "- Verify docker with: docker ps"
echo ""
