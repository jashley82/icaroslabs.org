FROM nginx

ADD nginx.conf /etc/nginx
ADD sites-enabled/ /etc/nginx/sites-enabled
ADD letsencrypt/certbot-auto /usr/bin/
ADD letsencrypt/options-ssl-nginx.conf /etc/letsencrypt/
