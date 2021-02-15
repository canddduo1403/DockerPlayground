FROM centos

RUN yum -y install httpd unzip

ARG user=application
ENV HTML_PATH beginner-html-site-styled

WORKDIR /var/www/html/

#COPY html-code /var/www/html
#Download file from internet and add to folder /var/www/html/
ADD https://github.com/mdn/$HTML_PATH/archive/gh-pages.zip ./code.zip

#Change directory to /var/www/html
#unzip .zip file in working directory
#move content in source directory to destination directory
RUN unzip code.zip && mv $HTML_PATH-gh-pages/* . && echo $HTML_PATH > ./env.html

#Add new user name application
#Change owner of directory to application user
RUN useradd $user && chown $user:$user /var/www/html/ -R

#Change user to application user
USER $user

#Delete directory by application user
RUN  rm -rf code.zip $HTML_PATH-gh-pages/

USER root

CMD apachectl -DFOREGROUND