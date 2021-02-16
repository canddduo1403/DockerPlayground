FROM centos

RUN yum -y install httpd unzip

#COPY html-code /var/www/html

# 1. Download file from internet and add to folder /var/www/html/
ADD https://github.com/mdn/beginner-html-site-styled/archive/gh-pages.zip /var/www/html/code.zip

# 2. Change directory to /var/www/html
# 3. unzip .zip file in working directory
# 4. move content in source directory to destination directory
RUN cd /var/www/html/ && unzip code.zip && mv /var/www/html/beginner-html-site-styled-gh-pages/* /var/www/html

CMD apachectl -DFOREGROUND