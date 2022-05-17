ARG version=8.1
FROM ghcr.io/nmoral/docker-php:${version}
VOLUME /application

RUN composer create-project symfony/skeleton /application
RUN composer require phpunit/phpunit
RUN composer install
