# Homepage Dashboard

## Purpose

Lightweight operational dashboard exposed through Cloudflare Tunnel.

Acts as:
- landing page
- service directory
- operational control surface

---

## Public URL

https://dashboard.sushantdev.com

---

## Runtime

Docker container running on OCI edge node.

Port:
- 3000

---

## Security

- Routed only through Cloudflare Tunnel
- No direct public VPS exposure
- Future Cloudflare Access protection planned

---

## Resource Constraints

Designed for low-resource environments.

Current OCI node:
- 1 OCPU
- 1GB RAM

---

## Compose Stack

Location:

```text
docker/homepage/docker-compose.yml
```

---

## Config Location

```text
configs/homepage/
```
