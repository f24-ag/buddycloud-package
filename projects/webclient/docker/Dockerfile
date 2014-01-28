# Ubuntu/precise is the main distribution
FROM ubuntu:precise

# sanitize all package lists
RUN echo > /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main restricted universe multiverse > /etc/apt/sources.list.d/precise.list
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise-updates main restricted universe multiverse >> /etc/apt/sources.list.d/precise.list
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise-security main restricted universe multiverse >> /etc/apt/sources.list.d/precise.list

# add wget and java
RUN apt-get update
RUN apt-get install --no-install-recommends -y wget openssl apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ADD buddycloud-webclient.deb /tmp/buddycloud-webclient.deb
RUN dpkg -i /tmp/buddycloud-webclient.deb
ADD buddycloud-apache-virtual-host /etc/apache2/sites-available

ENTRYPOINT mkdir -p /var/run/apache2; /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80 443