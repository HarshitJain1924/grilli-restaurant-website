# Use a lightweight nginx image as the base
FROM nginx:alpine

# Remove the default nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy website assets, index, favicon etc. from the build context root
# Assumes 'assets', 'index.html', 'favicon.svg' are in the same directory as the Dockerfile
COPY assets/ /usr/share/nginx/html/assets/
COPY index.html /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/
# Add COPY lines here if you have other essential website root files/folders

# Expose port 80 (the default nginx port)
EXPOSE 80

# The default nginx command starts the server, no explicit CMD needed for this base image
# CMD ["nginx", "-g", "daemon off;"] is the default