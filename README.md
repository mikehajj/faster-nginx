# faster-nginx

Nginx + Certbot on top of `mikehajj/faster-ubuntu`.

### Base
- `mikehajj/faster-ubuntu:latest`

### Packages
- Nginx (Ubuntu 24.04 security: **1.24.0-2ubuntu7.20+** for NGINX2Root / EC-3742)
- Certbot (`certbot`, `python3-certbot-nginx`)

### Security rebuild
Rebuild after Ubuntu nginx security updates so the image picks up the distro backport (USN-9159-1). Confirm package version in the GitHub Actions build log (`dpkg-query -W nginx`).

### Image
```
mikehajj/faster-nginx:latest
```

### Build
Build and push `faster-ubuntu` first, then:

```bash
docker build -t mikehajj/faster-nginx:latest .
```

### Stack
```
ubuntu:24.04 → faster-ubuntu → faster-nginx
```
