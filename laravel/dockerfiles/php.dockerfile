FROM php:7.4-fpm-alpine

# 웹 사이트를 제공하는 웹 서버의 표준적인 폴더경로
WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# cmd 나 entrypoint 명령어가 없다면 베이스 이미지에서 설정되어있는 명령어를 사용함
# php는 php 인터프리터를 호출하는 명령어를 사용 