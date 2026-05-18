#!/bin/bash

set -e

echo "[Structure] Creating homelab directories..."

mkdir -p ~/homelab/{compose,data,configs,scripts,backups}

mkdir -p ~/homelab/compose/{cloudflare,homepage,uptime-kuma}

echo "[Structure] Done."
