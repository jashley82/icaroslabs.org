FROM alpine

RUN mkdir -p /data/web
WORKDIR /data/web
COPY requirements.txt /data/web/

RUN apk update
RUN apk upgrade
RUN apk add --update build-base gcc gettext libxslt-dev libxml2-dev libffi-dev
RUN apk add --update py-pip python python-dev 
RUN apk add --update postgresql-client postgresql-dev 
RUN apk add --update jpeg-dev zlib-dev 
RUN apk add --update nodejs 
RUN pip install -r requirements.txt
RUN npm install -g bower gulp

RUN apk del -r gcc python-dev postgresql

COPY . /data/web/
