FROM alpine:3.12

RUN apk add --update \
    icecast && \
    rm -rf /var/cache/apk/*

EXPOSE 80
WORKDIR /etc

COPY ./icecast.xml /etc/icecast.xml

CMD icecast -c /etc/icecast.xml
