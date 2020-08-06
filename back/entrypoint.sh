#!/bin/sh

if [ -n "$PLAYLIST" ]; then
    sed -i "s#<filename>[^<]*<\/filename>#<filename>$PLAYLIST<\/filename>#g" /ezstream/ezstream.xml
fi
if [ -n "$MOUNTPOINT" ]; then
    sed -i "s#<mountpoint>[^<]*<\/mountpoint>#<mountpoint>$MOUNTPOINT<\/mountpoint>#g" /ezstream/ezstream.xml
fi
exec "$@"


if [ -n "$ICECAST_SOURCE_PASSWORD" ]; then
    sed -i "s/<source-password>[^<]*<\/source-password>/<source-password>$ICECAST_SOURCE_PASSWORD<\/source-password>/g" /etc/icecast.xml
fi
