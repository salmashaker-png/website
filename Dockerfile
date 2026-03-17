FROM ubuntu:latest

# Update and install Apache
RUN apt-get update && apt-get install -y apache2

# Copy your HTML file
COPY index.html /var/www/html/

# Run Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
