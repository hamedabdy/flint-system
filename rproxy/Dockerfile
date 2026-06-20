FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

# Create directory for certificates
# RUN mkdir -p /etc/nginx/certs

EXPOSE 8090 8443

CMD ["nginx", "-g", "daemon off;"]