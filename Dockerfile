FROM alpine:latest

RUN apk add --no-cache iputils

COPY ping.sh /usr/local/bin/ping.sh
RUN chmod +x /usr/local/bin/ping.sh

ENTRYPOINT ["/bin/ash", "/usr/local/bin/ping.sh"]