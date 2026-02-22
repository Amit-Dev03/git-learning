FROM nginx:alpine

WORKDIR /usr/share/nginx/html

#copying with better permisions
COPY --chown=nginx:nginx . .

#remove default nginx files 
RUN rm -rf /usr/share/nginx/html/* && \
    chmod -R 755 /usr/share/nginx/html

EXPOSE 80

#adding healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl -f http://localhost/ || exit 1

