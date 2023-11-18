# Use an official Nginx base image
FROM nginx:latest

# Copy your custom configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your HTML/CSS/JS files to the default Nginx web root directory
COPY ./your-web-app /usr/share/nginx/html

# Expose the port that Nginx will run on
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
