
FROM debian:10.2

MAINTAINER Devops "github@devops.com"


ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
&& apt -y install \
apache2 \
php \
php-mysql \
php-ldap \
php-apcu \
imagemagick \
php-imagick \
php-gd \
php-curl \
php-intl \
php-mbstring \
php-xml \
wget \
python-pygments \
git


COPY wiki-start.sh /opt
RUN chmod +x /opt/wiki-start.sh

ENTRYPOINT ["/opt/wiki-start.sh"]

EXPOSE 80 443
