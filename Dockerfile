FROM nginx:alpine
MAINTAINER Mykola Prokopenko nikolayjob18121990@gmail.com

WORKDIR /usr/share/nginx/html/app
COPY default.conf /etc/nginx/conf.d/default.conf
ADD ./app /usr/share/nginx/html/app
