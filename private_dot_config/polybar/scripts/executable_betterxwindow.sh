#!/bin/sh
# Similar to the xwindow module in polybar, but with more customization options.
# Heavily inspired by polytiramisu by anufrievroman

# Maximum number of characters:
char_limit=150

# Replace app names with nerd font logos
use_nerd_font="true"


# Get current focused window
focused="$(xdotool getwindowfocus)"

title="$(xprop -id $focused WM_NAME | awk -F'"' '{split($0,array); print array[2]}')"

# Replace app names with icons
if [ $use_nerd_font == "true" ]; then
    if [ "${#title}" -gt "$((char_limit-3))" ]; then
        title="$(echo "$title" | cut -c1-$((char_limit-1)))…"
    fi

    source="$(xdotool getwindowclassname $focused)"

    source="$(echo "$source" | sed -r 's/Telegram Desktop/ /I')"
    source="$(echo "$source" | sed -r 's/Blueberry.py/ /I')"
    source="$(echo "$source" | sed -r 's/vlc/嗢/I')"
    source="$(echo "$source" | sed -r 's/kdenlive/ /I')"
    source="$(echo "$source" | sed -r 's/firefox/ /I')"
    source="$(echo "$source" | sed -r 's/kdeconnect.app/ /I')"
    source="$(echo "$source" | sed -r 's/discord/ﭮ /I')"
    source="$(echo "$source" | sed -r 's/kitty//I')"
    source="$(echo "$source" | sed -r 's/Pavucontrol/蓼/I')"
    source="$(echo "$source" | sed -r 's/Spotify/ /I')"
    source="$(echo "$source" | sed -r 's/Authy Desktop/󰦯 /I')"
    source="$(echo "$source" | sed -r 's/ark/ /I')"
    source="$(echo "$source" | sed -r 's/SimpleScreenRecorder/壘/I')"
    source="$(echo "$source" | sed -r 's/Nm-connection-editor/直/I')"
    source="$(echo "$source" | sed -r 's/Bless/ﯟ /I')"
    source="$(echo "$source" | sed -r 's/kalk/ /I')"
    source="$(echo "$source" | sed -r 's/Chromium/ /I')"
    source="$(echo "$source" | sed -r 's/winecfg.exe/ /I')"
    source="$(echo "$source" | sed -r 's/copyq/ /I')"
    source="$(echo "$source" | sed -r 's/Cpu-x/ /I')"
    source="$(echo "$source" | sed -r 's/Lxappearance/ /I')"
    source="$(echo "$source" | sed -r 's/dolphin/ /I')"
    source="$(echo "$source" | sed -r 's/Electron/ﱦ /I')"
    source="$(echo "$source" | sed -r 's/Element/ﬧ /I')"
    source="$(echo "$source" | sed -r 's/flameshot/ /I')"
    source="$(echo "$source" | sed -r 's/gwenview/ /I')"
    source="$(echo "$source" | sed -r 's/UXTerm//I')"
    source="$(echo "$source" | sed -r 's/Inkscape/󰛓 /I')"
    source="$(echo "$source" | sed -r 's/mpv/ /I')"
    source="$(echo "$source" | sed -r 's/Gtk-lshw/ /I')"
    source="$(echo "$source" | sed -r 's/okular/ /I')"
    source="$(echo "$source" | sed -r 's/Mainwindow.py/調/I')" # PlayOnLinux
    source="$(echo "$source" | sed -r 's/VSCodium/󰨞 /I')"
    source="$(echo "$source" | sed -r 's/XTerm//I')"
    source="$(echo "$source" | sed -r 's/libreoffice-.*/ /I')"
    source="$(echo "$source" | sed -r 's/Gimp-.*/ /I')"
    source="$(echo "$source" | sed -r 's/.*setting.*/ /I')"

    echo "%{F#88c0d0}$source%{F-} $title"
else
    if [ "${#title}" -gt "$char_limit" ]; then
        title="$(echo "$title" | cut -c1-$((char_limit-1)))…"
    fi

    echo "$title"
fi
