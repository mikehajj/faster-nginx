# faster-nginx

Nginx + Certbot on top of `mikehajj/faster-ubuntu`.

### Base
- `mikehajj/faster-ubuntu:latest`

### Packages
- Nginx
- Certbot (`certbot`, `python3-certbot-nginx`)

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
