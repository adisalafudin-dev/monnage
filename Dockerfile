# Gunakan image PHP 8.3 + Nginx yang sudah dioptimasi
FROM serversideup/php:8.3-fpm-nginx

# Pindah ke root sementara untuk install Node.js (untuk Vite)
USER root
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Kembalikan akses ke user www-data
USER www-data

# Copy seluruh file project
COPY --chown=www-data:www-data . /var/www/html

# Install dependensi PHP
RUN composer install --no-dev --optimize-autoloader

# Install NPM & Build aset frontend
RUN npm ci && npm run build

# Cache konfigurasi Laravel
RUN php artisan config:cache && \
    php artisan route:cache && \
    php artisan view:cache