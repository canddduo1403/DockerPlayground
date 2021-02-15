FROM centos

RUN yum -y install httpd unzip

ENV HTML_PATH beginner-html-site-styled

#COPY html-code /var/www/html
# 1. Download file from internet and add to folder /var/www/html/
ADD https://github.com/mdn/$HTML_PATH/archive/gh-pages.zip /var/www/html/code.zip

# 2. Change directory to /var/www/html
# 3. unzip .zip file in working directory
# 4. move content in source directory to destination directory
RUN cd /var/www/html/ && unzip code.zip && mv /var/www/html/$HTML_PATH-gh-pages/* /var/www/html && echo $HTML_PATH > /var/www/html/env.html

CMD apachectl -DFOREGROUND