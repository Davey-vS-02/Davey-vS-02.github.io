# ------------------------------
# Dockerfile: Laravel + Vite (Production)
# ------------------------------

# 1️⃣ Use PHP FPM base image
FROM php:8.2-fpm

# 2️⃣ Install system dependencies for PHP + Node
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
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 3️⃣ Install PHP extensions required by Laravel
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql mbstring exif pcntl bcmath gd

# 4️⃣ Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 5️⃣ Set working directory
WORKDIR /var/www/html

# 6️⃣ Copy project files
COPY . .

# 7️⃣ Install PHP dependencies
RUN composer install --optimize-autoloader --no-dev

# 8️⃣ Install Node dependencies and build Vite assets
RUN npm ci
RUN npm run build

# 9️⃣ Clear Laravel caches
RUN php artisan config:clear \
    && php artisan route:clear \
    && php artisan view:clear

# 1️⃣0️⃣ Expose port (Render automatically sets PORT)
EXPOSE 10000

# 1️⃣1️⃣ Use PHP-FPM as the production entry point
CMD ["php-fpm"]
