#!/bin/bash

docker-compose exec nginx /usr/bin/ceretbot-auto certonly \
    -n --nginx --agree-tos --email icaroslabs@gmail.com -d icaroslabs.org

sudo crontab crontab.txt
