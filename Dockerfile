# Use a lightweight web server
FROM nginx:alpine

# Copy files to the web server
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
