# Emoji-dmenu 😀
💻 Select emoji via dmenu or rofi easily, 🚧 with automatic update which provided by https://emoji-api.com/ ❤️

You can choose either xft patched dmenu or rofi  
but rofi is highly recommended because of xft supported out of the box 🤖  

**Dependencies**  
- dmenu (xft patched) or rofi  
- curl  
- jq (which are already included in repo)  
- any notification daemon (optional but recommended)  

## Why ❓
Because I love emoji, and I think most people do too ! 😆

## Installation 📁
Just clone repo to anywhere your choice (but ~/emoji-dmenu is recommended which preconfigured with and easily to get started)

git clone https://github.com/littleboycoding/emoji-dmenu.git ~/emoji-dmenu

## Usage 🧰  
There are 2 core files, fetch.sh and get.sh  
fetch.sh is use to update emoji list which save to emoji.txt  
get.sh is use to start emoji selector (default with rofi, but you can change it inside)
  
Just bind get.sh with keybider of your choices, and you might also want to execute fetch.sh everytime you start your session. you should good to go ! 🦸

## Example with i3 🧙
In ~/config/i3/config add these lines.  
exec ~/emoji-dmenu/fetch.sh  
bindsym $mod+e exec bash ~/emoji-dmenu/get.sh 

That's it ! ⌨️

## Contribute 🎁
That's awesome ! you can open issue and start PR, I'll check it out ASAP 🤓
