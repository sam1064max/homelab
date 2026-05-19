# Runtime Constraints

## OCI Edge Node

Current node:
- VM.Standard.E2.1.Micro
- 1 OCPU
- 1GB RAM

---

## Operational Philosophy

Edge node responsibilities:
- ingress
- tunnel connectivity
- lightweight dashboards
- authentication
- reverse proxy

Avoid:
- media transcoding
- AI inference
- databases
- heavy observability stacks

---

## Memory Budgeting

Current services:

| Service | Estimated RAM |
|---|---|
| Ubuntu Base | 250MB |
| Docker | 80MB |
| cloudflared | 30MB |
| fail2ban | 30MB |
| Homepage | 120MB |

Remaining headroom intentionally preserved.

---

## Future Direction

Heavy workloads move to:
- Proxmox cluster
- future OCI Ampere node
