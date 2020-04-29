#!/bin/bash
echo "🚀 Fetching emoji from server..."
api_key="f4cd380f1e5385ad11b22287c4d64b59892a6cce"
emoji=$(curl -s https://emoji-api.com/emojis?access_key=$api_key)

# Check if fetch successfully or not.
if [ $? == 0 ]; then
	echo "✏️  Emoji fetched from server, now parsing..."

	cd ~/emoji-dmenu/ || { echo "📁 Folder ~/emoji-dmenu doesn't exist" && exit; }

	emoji=$(echo $emoji | ./jq --raw-output ".[] | \"\(.character) \(.slug),\"") || { echo "🧰 Parsing error..." && exit; }

	echo -e $emoji | sed -e 's/, /\n/g' > emoji.txt || { "🧰 Can't export emoji to emoji.txt..." && exit; }
	echo "🤖 Successfully, emoji has been exported to emoji.txt"

	notify-send "Emoji database have been updated 🎉"
else
	echo "🌍 Fetching failed, please check your internet connection."
fi

