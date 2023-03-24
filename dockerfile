FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
RUN rm /var/www/html/index.html
ADD ./index.html /var/www/html
