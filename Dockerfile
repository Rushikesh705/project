# Use lightweight NGINX base image
FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom config
COPY nginx.conf /etc/nginx/conf.d

# Copy website content
COPY . /usr/share/nginx/html

# Expose default web port
EXPOSE 80

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
