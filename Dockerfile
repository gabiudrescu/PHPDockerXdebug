ARG NGINX_VERSION=1.16

FROM php:7.3-fpm-alpine as php

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.9.1 \
    && docker-php-ext-enable xdebug

FROM nginx:${NGINX_VERSION}-alpine AS nginx

WORKDIR /var/www/html
