# Cloudflare Access

## Purpose

Protects publicly routed homelab services behind identity-aware authentication.

Avoids:
- public unauthenticated dashboards
- direct exposure of internal services

---

## Current Protected Services

| Service | URL |
|---|---|
| Homepage Dashboard | https://dashboard.sushantdev.com |

---

## Authentication

Current provider:
- Google login

Future:
- MFA enforcement
- service-specific policies

---

## Architecture

Internet
→ Cloudflare Access
→ Cloudflare Tunnel
→ OCI Edge Node
→ Internal Service
