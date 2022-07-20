#!/bin/bash

touchscreen="CUST0000:00 04F3:2ADF"

xinput --map-to-output "$touchscreen" $(xrandr --prop | grep eDP | cut -f1 -d" ")

if [[ -z $MONS_NUMBER ]]; then
  MONS_NUMBER=$(xrandr --query | grep " connected" | wc -l)
fi

case ${MONS_NUMBER} in
  1)
    mons -o
    nimg="display"
    nsum="HDMI disconnected"
    ndesc="A single monitor has been detected: eDP1"
    ;;
  2)
    mons -e right
    nimg="display"
    nsum="HDMI connected"
    ndesc="Two monitors have been detected: eDP1 and HDMI1"
    ;;
  *)
    # Handle it manually
    dunstify --icon=display "when did you get rich"
    ;;
esac

dunstify --icon=$nimg "$nsum" "$ndesc"
