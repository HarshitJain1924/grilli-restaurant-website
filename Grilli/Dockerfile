# Use a lightweight nginx image as the base
FROM nginx:alpine

# Remove the default nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy website files FROM the directory containing this Dockerfile (Grilli/)
# into the nginx web root inside the container.
COPY assets/ /usr/share/nginx/html/assets/
COPY index.html /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/
# Add other files if needed, relative to the Grilli/ directory

# Expose port 80
EXPOSE 80

# Default nginx command starts the server