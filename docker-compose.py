web:
  restart: always
  build: ./web/
  expose:
  - "8000"
  links:
  - postgres:postgres
  - redis:redis
  env_file: env
  volumes:
  - ./web:/data/web
  command: /usr/bin/gunicorn icaros_labs.wsgi:application -w 2 -b :8000

nginx:
  restart: always
  build: ./nginx/
  ports:
  - "80:80"
  volumes_from:
  - web
  links:
  - web:web

postgres:
  restart: always
  image: postgres:latest
  volumes_from:
  - data
  volumes:
  - ./postgres/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d
  - ./backups/postgresql:/backup
  env_file:
  - env
  expose:
  - "5432"

redis:
  restart: always
  image: redis:latest
  expose:
  - "6379"

data:
  restart: always
  image: alpine
  volumes:
  - /var/lib/postgresql
  command: "true"
