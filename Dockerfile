ARG version=8.1
FROM ghcr.io/nmoral/docker-php:${version}
VOLUME /application
ARG dev=0

ARG DEBIAN_FRONTEND=noninteractive

RUN composer create-project symfony/skeleton /application
RUN if [ "$dev" -eq 1 ]; then composer require --no-install --no-scripts --dev phpunit/phpunit && composer install --no-scripts; fi
