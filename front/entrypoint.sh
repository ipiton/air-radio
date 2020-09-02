#!/bin/sh
set_val() {
    if [ -n "$2" ]; then
        echo "set '$2' to '$1'"
        sed -i "s#<$2>[^<]*<\/$2>#<$2>$1<\/$2>#g" /etc/icecast.xml
    else
        echo "Setting for '$1' is missing, skipping." >&2
    fi
}

set_val $HOSTNAME hostname

exec "$@"
