FROM debian:buster

COPY src/ /var/www/html/

RUN apt-get update
RUN apt-get install apache2 supervisor php libapache2-mod-php -y
RUN apt-get install php-interbase php-pdo-firebird -y
RUN apt-get install php-curl -y
RUN apt-get install php-zip -y
RUN apt-get install php-bcmath -y

RUN chown www-data -R /var/www/html

ADD supervisord.conf /etc/supervisord.conf



CMD ["/usr/bin/supervisord"]
