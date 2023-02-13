#!/bin/sh
WP_CLI="wp-cli --allow-root"

echo configure wordpress...
rm -f wp-config
$WP_CLI core config \
    --dbhost=${WORDPRESS_DB_HOST} \
    --dbname=${WORDPRESS_DB_NAME} \
    --dbuser=${WORDPRESS_DB_USER} \
    --dbpass=${WORDPRESS_DB_PASSWORD} \
    --skip-check

echo install wordpress
$WP_CLI core install \
    --url=${DOMAIN_NAME} \
    --title=${WORDPRESS_WEBSITE_TITLE} \
    --admin_user=${WORDPRESS_ADMIN} \
    --admin_password=${WORDPRESS_ADMIN_PASSWORD} \
    --admin_email=${WORDPRESS_EMAIL}
