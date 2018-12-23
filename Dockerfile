# This Dockerfile installs Apache, MySQL and Wordpress on an ubuntu instance.
FROM ubuntu:latest
MAINTAINER devopszilla@gmail.com

RUN installation_scripts/ 
# Download latest Wordpress files in /var/www/html
RUN rm -rf /var/www/html
RUN wget https://wordpress.org/latest.tar.gz -O /root/wordpress_latest.tar.gz
WORKDIR /root
RUN tar -zxvf wordpress_latest.tar.gz
RUN mv /root/wordpress /var/www/html

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]



