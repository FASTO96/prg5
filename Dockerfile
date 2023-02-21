from php:7.2-apache
run apt update 
copy x/ /var/www/html
run docker-php-ext-install pdo pdo_mysql
