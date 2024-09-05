# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
