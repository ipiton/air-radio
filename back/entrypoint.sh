#!/bin/sh
set_val() {
    if [ -n "$2" ]; then
        echo "set '$2' to '$1'"
        sed -i "s#<$2>[^<]*<\/$2>#<$2>$1<\/$2>#g" /ezstream/ezstream.xml
    else
        echo "Setting for '$1' is missing, skipping." >&2
    fi
}

set_val $PLAYLIST filename
set_val $MOUNTPOINT mountpoint
set_val "$STREAM_NAME" stream_name
set_val $STREAM_URL stream_url
set_val "$STREAM_GENRE" stream_genre
set_val "$STREAM_DESC" stream_description
exec "$@"
