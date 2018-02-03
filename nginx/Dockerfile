FROM nginx

ADD sites-enabled/ /etc/nginx/sites-enabled
ADD certbot-auto /usr/bin/

RUN crontab crontab.txt
