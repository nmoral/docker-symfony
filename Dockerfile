FROM ghcr.io/nmoral/php:8.1
VOLUME /application
RUN composer create-project symfony/skeleton /application
