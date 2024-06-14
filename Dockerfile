FROM wordpress:latest

# Copy custom themes or plugins
COPY ./themes /var/www/html/wp-content/themes
COPY ./plugins /var/www/html/wp-content/plugins

# Ensure the container uses the correct permissions (adjust as necessary)
RUN chown -R www-data:www-data /var/www/html/wp-content/themes /var/www/html/wp-content/plugins
