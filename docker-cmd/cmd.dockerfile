FROM centos

RUN yum -y install httpd unzip

WORKDIR /var/www/html/

