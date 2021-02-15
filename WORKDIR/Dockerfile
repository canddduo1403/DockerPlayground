FROM centos

RUN yum -y install httpd unzip

ENV HTML_PATH beginner-html-site-styled

WORKDIR /var/www/html/

#COPY html-code /var/www/html
# 1. Download file from internet and add to folder /var/www/html/
ADD https://github.com/mdn/$HTML_PATH/archive/gh-pages.zip ./code.zip

# 2. Change directory to /var/www/html
# 3. unzip .zip file in working directory
# 4. move content in source directory to destination directory
RUN unzip code.zip && mv $HTML_PATH-gh-pages/* . && echo $HTML_PATH > ./env.html

CMD apachectl -DFOREGROUND