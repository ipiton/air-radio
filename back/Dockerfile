FROM alpine:3.12

RUN apk add --update \
    ezstream lame && \
    rm -rf /var/cache/apk/*

WORKDIR /ezstream

VOLUME ["/music"]

COPY ./ezstream.xml /ezstream/ezstream.xml
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod 644 /ezstream/ezstream.xml

ENTRYPOINT ["/entrypoint.sh"]
CMD ezstream -v -c /ezstream/ezstream.xml
