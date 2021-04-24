#!/bin/sh

LIBFFMPEG="/usr/share/code/libffmpeg.so"

if test -f "$LIBFFMPEG"; then
    echo "Copying $LIBFFMPEG..."
    cp $LIBFFMPEG /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so
else
    echo "$LIBFFMPEG file was not found! Aborting..."
    exit 1;
fi

LIBWIDEVINECDM="/opt/google/chrome/WidevineCdm/_platform_specific/linux_x64/libwidevinecdm.so"

if test -f "$LIBWIDEVINECDM"; then
    echo "Copying $LIBWIDEVINECDM..."
    cp $LIBWIDEVINECDM /opt/google/chrome/libwidevinecdm.so
else
    echo "$LIBWIDEVINECDM file was not found! Aborting..."
    exit 1;
fi

exit 0;