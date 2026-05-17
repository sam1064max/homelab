# HomeLab

Personal infrastructure and AI experimentation platform focused on:

- Self-hosting
- Privacy-first architecture
- Reproducible infrastructure
- AI/LLM services
- Edge networking
- Observability
- Infrastructure automation

---

# Goals

This repository documents the gradual evolution of a production-style homelab environment.

The stack is being designed to support:

- Secure remote access
- Containerized services
- AI workloads
- Monitoring and alerting
- Media and automation services
- Reverse proxy and ingress
- Infrastructure-as-code
- Reproducible deployments
- Hybrid cloud + on-prem architecture

---

# Current Infrastructure

## Oracle Cloud

Current bootstrap instance:

- Shape: VM.Standard.E2.1.Micro
- OS: Ubuntu 24.04 ARM64
- Purpose:
  - Initial infrastructure bootstrap
  - Security hardening
  - CI/CD experimentation
  - Reverse proxy and ingress

Future migration target:

- VM.Standard.A1.Flex
- 4 OCPU / 24GB RAM

---

# Planned Architecture

```text
Internet
    │
    ▼
Cloudflare Tunnel
    │
    ▼
Oracle VPS Edge Node
    │
    ├── Reverse Proxy
    ├── Authentication
    ├── Monitoring
    ├── Docker Services
    │
    ▼
HomeLab Cluster
    │
    ├── AI Services
    ├── Media Stack
    ├── Automation
    ├── Internal Apps
    └── Storage
```

---

# Planned Components

## Networking

- Cloudflare Tunnel
- Tailscale
- Caddy / Traefik
- Pi-hole
- DNS hardening

## Containers

- Docker
- Docker Compose
- Portainer

## Monitoring

- Uptime Kuma
- Prometheus
- Grafana
- Loki

## AI Stack

- Ollama
- Open WebUI
- vLLM
- Agentic workflows

## Media Stack

- Jellyfin
- Arr stack
- Download automation

---

# Security Principles

- Minimal exposed ports
- SSH key-only authentication
- Least privilege access
- Reproducible infrastructure
- Gradual hardening
- Public/private service separation

---

# Repository Structure

```text
docs/       -> architecture and notes
scripts/    -> automation scripts
docker/     -> compose stacks
infra/      -> infrastructure configs
```

---

# Status

Project currently in bootstrap phase.

Completed:
- Oracle Cloud bootstrap
- Initial security hardening
- Git-based infrastructure workflow

Next:
- Docker installation
- Cloudflare tunnel
- First exposed service
- Monitoring stack
