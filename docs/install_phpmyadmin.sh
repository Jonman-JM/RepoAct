#!/usr/bin/env
apt update
apt install -y nginx php-fpm php-mysql phpmyadmin
sudo apt install -y apache2-utils
sudo htpasswd -c /etc/nginx/.htpasswd PhpAdmin
