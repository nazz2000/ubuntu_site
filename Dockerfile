FROM node:lts-alpine AS builder
WORKDIR /usr/share/nginx/html

COPY index.html .

COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
