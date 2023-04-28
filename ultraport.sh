#!/bin/bash

if [ -f "libsteam_api.so" ]; then
    echo "./libsteam_api.so found!"
else 
    echo "libsteam_api.so not found in this folder! Please add it and try again."
    exit
fi

if [ -f "discord_game_sdk.so" ]; then
	echo "./discord_game_sdk.so found!"
else
	echo "discord_game_sdk.so not found in this folder! Please add it and try again."
	exit
fi

if [ -f "ULTRAPORT.tar.gz" ]; then
	echo "./ULTRAPORT.tar.gz found!"
else
	echo "./ULTRAPORT.tar.gz not found in this folder! Please add it and try again."
fi

tar -xzf ULTRAPORT.tar.gz

mv libsteam_api.so ULTRAKILL_Data/Plugins/x86_64/steam_api64.so

mv discord_game_sdk.so ULTRAKILL_Data/Plugins/x86_64/

ln -s Cybergrind CyberGrind

echo "Done! Either launch the game with ./ULTRAKILL.x86_64, or change your Steam launch options to the following to play!"

echo "\"$(pwd)/ULTRAKILL.x86_64 && echo %command%\""
