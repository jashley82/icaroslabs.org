FROM nginx

ADD sites-enabled/ /etc/nginx/sites-enabled
ADD certbot-auto /usr/bin
RUN chmod +x /usr/bin/certbot-auto

#RUN apt-get update -y
#RUN apt-get install -y software-properties-common
