#!/bin/bash
rm /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
mv /tmp/default.conf /etc/nginx/conf.d/
ln -s /etc/nginx/conf.d/default.conf /etc/nginx/sites-available/

chown -R www-data /var/www/*
chmod 755 /var/www/*

service mysql start
service php7.2-fpm start
service nginx start

/bin/bash
