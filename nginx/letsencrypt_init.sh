#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
    exit 1
fi

docker-compose exec nginx /usr/bin/ceretbot-auto certonly \
    -n --nginx --agree-tos --email icaroslabs@gmail.com -d icaroslabs.org

crontab letsencrypt/crontab.txt
