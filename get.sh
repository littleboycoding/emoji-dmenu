#!/bin/bash

#Rofi (recommended)
cd ~/emoji-dmenu/ || { echo "📁 Folder ~/emoji-dmenu doesn't exist..." && exit; }
if [ -f emoji.txt ]; then

rofi -dmenu -p "Emoji" -input emoji.txt -w $(xdotool getwindowfocus) -no-custom | sed -e "s/ .*$//; s/\n//g" | xclip -selection clipboard -i -r

#dmenu also supported, but need dmenu with patched (xft) version to display emoji
#cat ~/emoji-dmenu/emoji.txt | dmenu -p "Emoji" -w $(xdotool getwindowfocus) | sed -e "s/ .*$//; s/\n//g" | xclip -selection clipboard -i -r

notify-send "$(xclip -o -selection clipboard) has been copied to clipboard !"
else
notify-send "emoji.txt not found in ~/emoji-dmenu" && exit
fi

