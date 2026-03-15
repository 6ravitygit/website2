FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD sh -c "sed -i 's/__PORT__/'\"$PORT\"'/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
