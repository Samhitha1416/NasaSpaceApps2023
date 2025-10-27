FROM nginx:stable-alpine
COPY . /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html \
 && find /usr/share/nginx/html -type d -exec chmod 755 {} \; \
 && find /usr/share/nginx/html -type f -exec chmod 644 {} \;
EXPOSE 80