#!/bin/sh

# Give permission for execution of this script
chmod +x /var/www/entrypoint.sh

# Install PHP dependencies
composer install

# Install NPM dependencies
npm install

# Run any Laravel specific commands
php artisan key:generate
php artisan migrate

# Start PHP-FPM
#php-fpm
