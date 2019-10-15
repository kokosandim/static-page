FROM nginx:alpine

# RUN addgroup -S testuser && adduser -S -G testuser testuser
WORKDIR /usr/share/nginx/html/app
COPY default.conf /etc/nginx/conf.d/default.conf
ADD ./app /usr/share/nginx/html/app
EXPOSE 8090
