FROM ubuntu:18.04

RUN mkdir -p /data/web
WORKDIR /data/web
COPY requirements.txt /data/web/

RUN apt -y update
RUN apt -y  upgrade
RUN apt -y install build-essential gcc gettext libxslt-dev libxml2-dev libffi-dev musl-dev libssl-dev
RUN apt -y install python python-dev python-pip
RUN apt -y install postgresql-client libpq-dev 
RUN apt -y install libjpeg-dev zlib1g-dev 
RUN apt -y install nodejs npm
RUN pip install -r requirements.txt
RUN npm install -g bower gulp

COPY . /data/web/
