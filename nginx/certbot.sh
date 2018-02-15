#!/bin/bash

# Run this setup initial letsencrypt certificate

docker run -it --rm \
    -v certs:/etc/letsencrypt \
    -v certs-data:/data/letsencrypt \
    certbot/certbot \
    certonly \
    --webroot --webroot-path=/data/letsencrypt \
    -d icaroslabs.org
