#!/bin/sh
# Show tiramisu notifications in polybar.

# How many seconds notification is displayed:
display_duration=20.0

# Maximum number of characters:
char_limit=150

# Replace app names with nerd font logos
use_nerd_font="true"

# Stop old tiramisu processes if any:
pgrep -x tiramisu >/dev/null && killall tiramisu

prev_pid=bruh
has_previous=false

resetloop()
{
    sleep 10
    echo " "
}

changetext()
{
    # bubble icon in front
    echo " $line"
    sleep "$display_duration"
}

# Start a new tiramisu process:
tiramisu -o '#source %{F#88c0d0}#summary%{F-} #body' |
    while read -r line; do

        line="$(echo "$line" | sed -r '')"

        # Replace app names with icons
        if [ $use_nerd_font == "true" ]; then
            line="$(echo "$line" | sed -r 's/Telegram Desktop//')"
            line="$(echo "$line" | sed -r 's/Telegram/y/')"
            line="$(echo "$line" | sed -r 's/Bitwarden//')"
            line="$(echo "$line" | sed -r 's/VLC/嗢/')"
            line="$(echo "$line" | sed -r 's/Kdenlive//')"
            line="$(echo "$line" | sed -r 's/NetworkManager//')"
            line="$(echo "$line" | sed -r 's/Firefox/ /')"
            line="$(echo "$line" | sed -r 's/KDE Connect//')"
            line="$(echo "$line" | sed -r 's/Snapchat/例/')"
            line="$(echo "$line" | sed -r 's/nstagram//')"
            line="$(echo "$line" | sed -r 's/Twitter//')"
            line="$(echo "$line" | sed -r 's/YouTube Vanced//')"
            line="$(echo "$line" | sed -r 's/YouTube//')"
            line="$(echo "$line" | sed -r 's/discord/ﭮ/I')"
            line="$(echo "$line" | sed -r 's/Droid-ify/ /')"
            line="$(echo "$line" | sed -r 's/FFUpdater/ /')"
            line="$(echo "$line" | sed -r 's/LinkedIn//')"
            line="$(echo "$line" | sed -r 's/Proton Mail/P/')"
            line="$(echo "$line" | sed -r 's/Outlook/ /')"
            line="$(echo "$line" | sed -r 's/notify-send//')"
        fi

        # Cut notification by character limit:
        if [ "${#line}" -gt "$char_limit" ]; then
            line="$(echo "$line" | cut -c1-$((char_limit-1)))…"
        fi

        if [ $has_previous == true ]; then
            kill $prev_pid 2>&1 >/dev/null || true
        fi

        # Display notification for the duration time:

        changetext &
        has_previous=true
        resetloop &
        prev_pid=$!
    done
