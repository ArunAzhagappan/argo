FROM nginx

RUN apt-get update && apt-get upgrade -y

# Copy both index.html and favicon.ico to Nginx web root directory
COPY index.html /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
