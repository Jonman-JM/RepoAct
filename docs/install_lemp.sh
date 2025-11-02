#!/usr/bin/env
apt update
apt install -y nginx mariadb-server php-fpm php-mysql
apt purge -y apache2 apache2-bin apache2-data apache2-utils || true
apt autoremove -y
