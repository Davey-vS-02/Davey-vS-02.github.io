# ------------------------------
# Stage 1: Build stage (PHP + Node for Vite)
# ------------------------------
FROM php:8.2-fpm AS build

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git unzip curl libpng-dev libonig-dev libxml2-dev libpq-dev npm zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Copy PHP & Node dependencies first (for caching)
COPY composer.json composer.lock ./
COPY package.json package-lock.json ./ 

# Install dependencies
RUN composer install --no-dev --optimize-autoloader
RUN npm install

# Copy the rest of the project
COPY . .

# Build Vite assets for production
RUN npm run build

# ------------------------------
# Stage 2: Production image (Nginx + PHP-FPM)
# ------------------------------
FROM php:8.2-fpm AS production

# Install system dependencies for PHP
RUN apt-get update && apt-get install -y libpng-dev libonig-dev libxml2-dev libpq-dev zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath gd

# Set working directory
WORKDIR /var/www/html

# Copy PHP code and vendor from build stage
COPY --from=build /var/www/html /var/www/html

# Copy Vite build assets
COPY --from=build /var/www/html/public/build /var/www/html/public/build

# Install Nginx
RUN apt-get update && apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*

# Configure Nginx
RUN rm /etc/nginx/sites-enabled/default
COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

# Expose port for Render
EXPOSE 10000

# Start Nginx + PHP-FPM
CMD ["sh", "-c", "php artisan config:clear && php artisan view:clear && php artisan migrate --force && php-fpm -D && nginx -g 'daemon off;'"]
