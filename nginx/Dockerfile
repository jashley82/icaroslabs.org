FROM tutum/nginx

RUN rm /etc/nginx/sites-enabled/default
ADD nginx/nginx.conf /etc/nginx
ADD sites-enabled/ /etc/nginx/sites-enabled
