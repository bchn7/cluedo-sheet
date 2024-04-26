# Use an official PHP 8.2 FPM image
FROM php:8.2-fpm

# Update package repository and install required packages
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libpq-dev  # Required for PostgreSQL pdo_pgsql

# Install PHP extensions
RUN docker-php-ext-install -j$(nproc) iconv && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-install pdo_pgsql # Install pdo_pgsql extension

# Create a directory for your application
RUN mkdir -p /var/www/html

# Set the working directory to /var/www/html
WORKDIR /var/www/html
