
FROM alpine:3.12

RUN apk add --update \
    ezstream lame && \
    rm -rf /var/cache/apk/*

WORKDIR /ezstream

VOLUME ["/music"]

COPY ./ezstream.xml /ezstream/ezstream.xml
RUN chmod 644 /ezstream/ezstream.xml
CMD ezstream -c /ezstream/ezstream.xml
