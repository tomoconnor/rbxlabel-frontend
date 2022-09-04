FROM busybox:latest

RUN adduser -D static

USER static

WORKDIR /home/static

COPY --chown=static:static . .

CMD ["busybox", "httpd", "-f", "-p", "7801"]