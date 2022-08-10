#!/bin/sh

notify_volume() {
    icon="/usr/share/icons/Dracula/24@2x/panel/volume-level-none-panel.svg"
    vol=$(pamixer --get-volume)

    if [ $vol -lt 25 ]
    then
        icon="/usr/share/icons/Dracula/24@2x/panel/volume-level-low-panel.svg"
    elif [ $vol -lt 75 ]
    then
        icon="/usr/share/icons/Dracula/24@2x/panel/volume-level-medium-panel.svg"
    else 
        icon="/usr/share/icons/Dracula/24@2x/panel/volume-level-high-panel.svg"
    fi


    if [ "$(pamixer --get-mute)" = "true" ]; then
        notify-send -a progress -t 1500 -h 'string:wired-tag:volume' -h "int:value:$(pamixer --get-volume)" 'muted' -i "/usr/share/icons/Dracula/24@2x/panel/volume-level-muted-panel.svg"
    else
        notify-send -a progress -t 1500 -h 'string:wired-tag:volume' -h "int:value:$(pamixer --get-volume)" "$(pamixer --get-volume)%" -i $icon
    fi
}

notify_brightness() {
    notify-send -a progress -t 1500 -h 'string:wired-tag:brightness' -h "int:value:$target" 'Brightness' 
}

case "$1" in
    up)
        pamixer -i 5
        notify_volume
    ;;

    down)
        pamixer -d 5
        notify_volume
    ;;

    mutetoggle)
        pamixer --toggle-mute
        notify_volume
    ;;

    light_up)
        xbacklight -inc 10
        target=$(printf '%.*f\n' 0 "$(xbacklight)")
        notify_brightness
    ;;

    light_down)
        xbacklight -dec 10
        target=$(printf '%.*f\n' 0 "$(xbacklight)")
        notify_brightness
    ;;
esac
