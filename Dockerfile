FROM swaggerapi/swagger-ui

RUN apk update
RUN apk add apache2-utils

ARG USERNAME=username
ARG PASSWORD=password

RUN htpasswd -c -b /etc/nginx/.htpasswd ${USERNAME} ${PASSWORD} && cat /etc/nginx/.htpasswd

COPY 50-basic_auth.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/50-basic_auth.sh

RUN cat /etc/nginx/conf.d/default.conf