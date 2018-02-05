#!/bin/bash

docker run -it --rm \
    -v certs:/etc/letsencrypt \
    -v certs-data:/data/letsencrypt \
    certbot/certbot \
    certonly \
    --webroot --webroot-path=/data/letsencrypt \
    -d icaroslabs.org
