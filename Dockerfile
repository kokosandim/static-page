FROM nginx:alpine

#RUN addgroup -S testuser && adduser -S -G testuser testuser
#RUN rc-service nginx stop
#USER testuser
#RUN /etc/init.d/nginx start
WORKDIR /usr/share/nginx/html/app
COPY default.conf /etc/nginx/conf.d/default.conf
COPY ./app /usr/share/nginx/html/app
EXPOSE 8090
