FROM nginx

COPY build/ /usr/share/nginx/html
COPY scripts/nginx.conf /etc/nginx/conf.d/default.conf

COPY scripts/startup.sh /
RUN chmod +x /startup.sh

CMD ["/startup.sh"]