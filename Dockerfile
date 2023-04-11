FROM php:7.4-fpm-alpine

# Copy custom php.ini file

# Install necessary PHP extensions
RUN docker-php-ext-install pdo_mysql mysqli

# Set working directory
WORKDIR /var/www/html

# Copy application code
COPY ./index.php /var/www/html/index.php
# Set permissions for the web server user (www-data)

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
