# Base image
FROM php:8.4-apache

# Set working directory
WORKDIR /var/www/html

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev \
    zip && \
    docker-php-ext-install pdo_mysql zip && \
    a2enmod rewrite

# Set the Apache document root to Laravel's public directory
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/public!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy application code
COPY . .

# Install Laravel dependencies
RUN composer install 
#--no-dev --optimize-autoloader

RUN php artisan storage:link --relative
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache /var/www/html/public/storage
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache /var/www/html/public/storage
RUN find /var/www/html/storage/app/public -type d -exec chmod 775 {} \;
RUN find /var/www/html/storage/app/public -type f -exec chmod 664 {} \;

# RUN ln -s /path/to/laravel/storage/app/public /path/to/public/storage
# # Update Apache configuration to follow symlinks (optional, but recommended)
RUN sed -ri 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
RUN sed -ri 's/Options Indexes FollowSymLinks/Options FollowSymLinks/g' /etc/apache2/apache2.conf


# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2-foreground"]


# # 1. Temel imajı belirleyin
# FROM php:8.2-fpm

# # 2. Çalışma dizinini ayarlayın
# WORKDIR /var/www

# # 3. Bağımlılıkları yüklemek için gerekli ek araçları yükleyin
# RUN apt-get update && apt-get install -y \
#     build-essential \
#     libpng-dev \
#     libjpeg62-turbo-dev \
#     libfreetype6-dev \
#     locales \
#     zip \
#     jpegoptim optipng pngquant gifsicle \
#     vim \
#     unzip \
#     git \
#     curl \
#     libonig-dev \
#     libzip-dev

# # 4. Composer'ı yükleyin
# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
# # 5. PHP uzantılarını yükleyin
# RUN apt-get install -y libxml2-dev
# RUN docker-php-ext-install soap
# RUN docker-php-ext-configure gd --with-freetype --with-jpeg
# RUN docker-php-ext-install pdo pdo_mysql gd zip mbstring exif pcntl bcmath
# RUN echo "date.timezone=Europe/Istanbul" > /usr/local/etc/php/conf.d/timezone.ini
# # 6. Laravel proje dosyalarını kopyalayın
# COPY . /var/www

# # 7. Laravel bağımlılıklarını yükleyin
# RUN composer install 

# # 8. Portu belirtin
# EXPOSE 8000

# # 9. Uygulamayı çalıştırın
# CMD ["php-fpm"]