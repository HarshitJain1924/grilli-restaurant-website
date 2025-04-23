# Use a lightweight nginx image as the base
FROM nginx:alpine

# Remove the default nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files (HTML, CSS, JS, assets) into the nginx web root directory
# Make sure this Dockerfile is in the root of your project directory when you build
COPY . /usr/share/nginx/html/

# Expose port 80 (the default nginx port)
EXPOSE 80

# The default nginx command starts the server, so no explicit CMD is needed
# CMD ["nginx", "-g", "daemon off;"] is the default for this base image