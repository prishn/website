FROM ubuntu
RUN apt-get update -y
RUN apt install apache2 -y
ENTRYPOINT apachectl  -D FOREGROUND
COPY index.html /var/www/html/index.html
COPY . /var/www/html/

