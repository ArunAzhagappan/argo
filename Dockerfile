# Use the official Nginx image from the Docker Hub
FROM nginx

RUN apt-get update && apt-get upgrade -y

# Copy the index.html file to the Nginx html directory
COPY static/index.html /usr/share/nginx/html/index.html



CMD ["nginx", "-g", "daemon off;"]
