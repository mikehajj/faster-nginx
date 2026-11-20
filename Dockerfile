FROM mikehajj/faster-ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# EC-3742 / NGINX2Root (USN-9159-1): rebuild so apt installs nginx >= 1.24.0-2ubuntu7.20
RUN echo "Installing Nginx Web server ..." \
 && apt-get update \
 && apt-get install -y nginx \
 && nginx -v \
 && dpkg-query -W -f='nginx ${Version}\n' nginx \

 && echo "Install Certbot ..." \
 && apt-get install -y certbot python3-certbot-nginx \
 && certbot --version \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

RUN echo "===============================================" \
 && echo "Image Building Completed, Enjoy!"

CMD ["/bin/bash"]
