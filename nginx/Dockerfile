FROM nginx

ADD sites-enabled/ /etc/nginx/sites-enabled
ADD certbot-auto /usr/bin
RUN chmod +x /usr/bin/certbot-auto

RUN /usr/bin/certbot-auto certonly --webroot -w /etc/nginx/sites-enabled --agree-tos --email maelstromfiery@gmail.com -d icaroslabs.org
RUN crontab crontab.txt
