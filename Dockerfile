# ------------------------------
# Dockerfile for Laravel + Vite + Postgres (Production)
# ------------------------------

# 1️⃣ Use PHP FPM base image
FROM php:8.2-fpm

# 2️⃣ Install system dependencies for PHP + Node
# Added libpq-dev for Postgres support
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

# 8️⃣ Install Node dependencies and build Vite assets for production
RUN npm install
RUN npm run build

# 9️⃣ Expose port for Laravel
EXPOSE 8000

# 🔟 Set environment to production
ENV APP_ENV=production
ENV APP_DEBUG=false

# 1️⃣1️⃣ Start Laravel built-in server with config clear and migrations
CMD ["sh", "-c", "php artisan config:clear && php artisan migrate --force && php artisan serve --host=0.0.0.0 --port=${PORT}"]
