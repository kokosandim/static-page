FROM nginx:stable

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN groupadd -g 999 testuser && useradd -r -u 999 -g testuser testuser && \
  chown -R testuser:testuser /var/log/nginx/ && \
  chown -R testuser:testuser /etc/nginx/ && \
  chown -R testuser:testuser /var/run/ && \
  chown testuser:testuser /var/cache/nginx && \
  /etc/init.d/nginx stop
USER testuser
RUN /etc/init.d/nginx start
WORKDIR /usr/share/nginx/html/app
COPY ./app /usr/share/nginx/html/app
#EXPOSE 8090
