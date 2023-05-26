FROM php:8.2.6-apache
RUN a2dissite 000-default \
    && a2enmod rewrite \
    && a2enmod headers
COPY laravel.conf /etc/apache2/sites-available/000-default.conf
COPY laravel.conf /etc/apache2/sites-available/
RUN a2ensite 000-default \
    && a2ensite laravel
COPY php-laravel.ini /usr/local/etc/php/conf.d
RUN apt-get update -y && apt-get install -y \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-install pdo_mysql zip
WORKDIR /tmp
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer
RUN service apache2 restart
COPY . /var/www/html
WORKDIR /var/www/html
RUN composer install --no-dev
RUN cp .env.example .env \
    && php artisan key:generate