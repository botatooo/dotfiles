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
                
        # Replace app names with icons
        if [ $use_nerd_font == "true" ]; then
            line="$(echo "$line" | sed -r 's/Telegram Desktop/ /I')"
            line="$(echo "$line" | sed -r 's/Bitwarden/ /I')"
            line="$(echo "$line" | sed -r 's/VLC/嗢 /I')"
            line="$(echo "$line" | sed -r 's/Kdenlive/ /I')"
            line="$(echo "$line" | sed -r 's/Wifi/ /I')"
            line="$(echo "$line" | sed -r 's/Firefox/ /I')"
            line="$(echo "$line" | sed -r 's/KDE Connect/ /I')"
            line="$(echo "$line" | sed -r 's/Snapchat/例 /I')"
            line="$(echo "$line" | sed -r 's/Instagram/ /I')"
            line="$(echo "$line" | sed -r 's/Twitter/ /I')"
            line="$(echo "$line" | sed -r 's/Youtube/ /I')"
            line="$(echo "$line" | sed -r 's/Youtube Vanced/ /I')"
            line="$(echo "$line" | sed -r 's/discord/ﭮ /I')"
            line="$(echo "$line" | sed -r 's/notify-send/ /I')"
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
