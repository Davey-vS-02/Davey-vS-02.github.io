# ------------------------------
# Dockerfile for Laravel + Nginx + PHP-FPM (Production)
# ------------------------------

# 1️⃣ Base image: PHP-FPM 8.2
FROM php:8.2-fpm

# 2️⃣ Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    npm \
    zip \
    nginx \
    supervisor \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 3️⃣ Install PHP extensions required by Laravel
RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath gd

# 4️⃣ Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 5️⃣ Set working directory
WORKDIR /var/www/html

# 6️⃣ Copy composer files first (for caching)
COPY composer.json composer.lock ./

# 7️⃣ Install PHP dependencies without running scripts
RUN composer install --no-dev --optimize-autoloader --no-scripts

# 8️⃣ Copy the rest of the project
COPY . .

# 9️⃣ Run post-install scripts now artisan exists
RUN php artisan package:discover --ansi

# 🔟 Install Node dependencies and build Vite assets
RUN npm install
RUN npm run build

# 1️⃣1️⃣ Set permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# 1️⃣2️⃣ Copy Nginx config
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# 1️⃣3️⃣ Expose port
EXPOSE 80

# 1️⃣4️⃣ Use Supervisor to run both PHP-FPM & Nginx
COPY ./docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-n"]
