#!/bin/bash

exit

boot=$([[ "$1" == "boot" ]] && echo yes)

# Touchscreen setup (dell touchscreen names suck)
touchscreen="CUST0000:00 04F3:2ADF"

xinput --map-to-output "$touchscreen" $(xrandr --prop | grep eDP | cut -f1 -d" ")

npid=""

nimg="display"
nsum="HDMI connected"
ndesc="Currently, two monitors are being detected: builtin and HDMI (eDP1 and HDMI1)"

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
    dunstify --image=display "yo" "when tf did you get rich"
    ;;

if [[ "$boot" != "yes" ]]; then
  if [[ $npid == "" ]]; then
    npid=$(dunstify --image=$nimg "$nsum" "$ndesc" --printid)
  else
    dunstify --image=$connectedImg "$connectedSum" "$connectedDesc" --replace=$npid
  fi
fi
