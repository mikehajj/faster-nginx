FROM mikehajj/faster-ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "Installing Nginx Web server ..." \
 && apt-get update \
 && apt-get install -y nginx \
 && nginx -v \
 && echo "Install Certbot ..." \
 && apt-get install -y certbot python3-certbot-nginx \
 && certbot --version \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "===============================================" \
 && echo "Image Building Completed, Enjoy!"

CMD ["/bin/bash"]
