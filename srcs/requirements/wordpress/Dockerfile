FROM alpine:3.16

RUN apk update && apk add \
    curl\
    php \
    php-phar \
    php-iconv \
    php-mbstring \
    php-fpm \
    php-mysqli

# download wordpress
# RUN curl -O https://wordpress.org/latest.tar.gz
# RUN tar -xzvf latest.tar.gz

# Install WP-CLI for config wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli

COPY ./install_wordpress.sh /usr/local/bin
WORKDIR /var/www/html
# RUN install_wordpress.sh

# listen on all interfaces
RUN sed -i "s/127\.0\.0\.1\:9000/9000/g" /etc/php8/php-fpm.d/www.conf

EXPOSE 9000

# install & configure wordpress
ENTRYPOINT [ "setup.sh" ]
# start php
CMD ["/usr/sbin/php-fpm8", "-F", "-R"]
