FROM ubuntu:latest

COPY src/ /var/www/html/

RUN apt-get update
RUN apt-get install apache2 php libapache2-mod-php -y
RUN apt-get install php-curl -y
RUN apt-get install php-zip -y
RUN apt-get install php-bcmath -y

RUN chown www-data -R /var/www/html

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]
