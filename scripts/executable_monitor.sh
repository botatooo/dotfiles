#!/bin/sh
# todo: yeet this when new laptop arrives because no touchscreen
case ${MONS_NUMBER} in
    1)
        mons -o
        ;;
    2)
        mons -e right
        ;;
    *)
        # Handle it manually
        ;;
esac
xinput --map-to-output "ELAN Touchscreen" "eDP"