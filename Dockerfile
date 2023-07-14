FROM alpine:latest

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY script.sh /script.sh

RUN chmod +x /script.sh

CMD ["sh", "/script.sh"]
