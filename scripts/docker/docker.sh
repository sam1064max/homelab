#!/bin/bash

set -e

echo "[Docker] Installing Docker..."

sudo apt install -y docker.io docker-compose

echo "[Docker] Enabling services..."

sudo systemctl enable docker
sudo systemctl start docker

echo "[Docker] Adding current user to docker group..."

sudo usermod -aG docker $USER

echo "[Docker] Configuring daemon..."

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

echo "[Docker] Done."
