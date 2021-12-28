local awful = require("awful")
local gears = require("gears")

local autostarts =
{
    "picom",
    "nm-applet",
    "blueman-applet",
    -- "kdeconnect-indicator",
    -- "discord --start-minimized",
    -- "steam -silent",
    "copyq",
    "mons -a -x $HOME/scripts/monitor.sh"
}

-- https://www.reddit.com/r/awesomewm/comments/aw7l3y/comment/ei0lpbk/?utm_source=share&utm_medium=web2x&context=3
local function run_once(cmd_arr)
    for _, cmd in ipairs(cmd_arr) do
        findme = cmd
        firstspace = cmd:find(" ")
        if firstspace then
            findme = cmd:sub(0, firstspace-1)
        end
        if findme == "discord" then
            findme = "Discord" -- WHY
        end
        awful.spawn.with_shell(string.format("pgrep -x %s > /dev/null || (%s)", findme, cmd))
    end
end

run_once(autostarts)

awful.spawn.with_shell("killall alttab -S SIGINT")
awful.spawn.with_shell("alttab -fg \"#d58681\" -bg \"#4a4a4a\" -frame \"#eb564d\" -t 128x150 -i 127x64")

awful.spawn.with_shell("pgrep -x pipewire > /dev/null || pipewire")