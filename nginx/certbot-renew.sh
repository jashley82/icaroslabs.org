#!/bin/bash

# Run this to renew letsencrypt certificate

docker run -t --rm \
    -v certs:/etc/letsencrypt \
    -v certs-data:/data/letsencrypt \
    certbot/certbot \
    renew \
    --webroot --webroot-path=/data/letsencrypt
docker-compose kill -s HUP nginx
