FROM alpine:3.16

RUN apk update && \
    apk add php-fpm && \
    apk add php-mysqli;

# listen on all interfaces
RUN sed -i "s/127\.0\.0\.1\:9000/9000/g" /etc/php8/php-fpm.d/www.conf

ADD index.php /var/www/localhost/htdocs/index.php

EXPOSE 9000

CMD ["/usr/sbin/php-fpm8", "-F", "-R"]
