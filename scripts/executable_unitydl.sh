#!/bin/sh
VERSION=$1
if [ -z $VERSION ]; then
    echo "usage: dlunity VESION" 1>&2
    echo "e.g.: dlunity 5.4.1f1" 1>&2
    exit 1
elif echo $VERSION | grep "p"; then
    RELTYPE="p"
elif echo $VERSION | grep "f"; then
    RELTYPE="f"
    SHORTVERSION="$(echo $VERSION | cut -df -f 1)"
else
    echo "Invalid Unity3d version: $VERSION" 1>&2
    exit 1
fi
get_revision_f() {
    curl https://unity3d.com/unity/whats-new/$SHORTVERSION \
    | grep -i revision \
    | cut -d\  -f 2 | cut -d\< -f 1
}
get_revision_p() {
    #for i in `seq 99`; do
        echo "Searching" 1>&2
        r="$(\
            curl "https://unity3d.com/get-unity/download/archive" 2> /dev/null\
            | grep 'https://download.unity3d.com/download_unity/.*'$VERSION'.exe' \
            | head -1 \
            | cut -d/ -f 5 \
        )"
        if [ -n "$r" ]; then
            echo $r
            #break
        fi
    #done
}
REVISION=$(get_revision_p)
if [ -z "$REVISION" ]; then
    echo "Can't get revision number. Is $VERSION correct version?" 1>&2
    exit 2
fi
LASTPART="$(\
    curl https://download.unity3d.com/download_unity/$REVISION/unity-win.ini \
    | grep '^url=.*Linux.*exe' \
    | head -1\
    | cut -d= -f 2\
    | tr -d "\r" \
)"
TEMPFILE=/tmp/unity-$VERSION
OUTDIR="unity3d-$VERSION"
curl https://download.unity3d.com/download_unity/$REVISION/$LASTPART > $TEMPFILE &&\
7z x -o"$OUTDIR" "$TEMPFILE" \*/Varia\* &&\
rm "$TEMPFILE"
