#!/bin/bash

set -e

echo "[Base] Updating system..."

sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y

echo "[Base] Installing core packages..."

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
  lsb-release
