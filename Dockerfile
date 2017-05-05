FROM alpine:3.4


WORKDIR /app
VOLUME /startup.sh /startup.sh
RUN chmod 775 /startup.sh
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf
EXPOSE 3306
CMD ["/startup.sh"]
