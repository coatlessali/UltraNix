#!/bin/bash

# Check for Operating System in use
if [[ "$(uname -a)" == *"Darwin"* ]]; then
    echo "Darwin found in uname, assuming MacOS..."
    
    # Sanity Check
    if [ -f "ULTRAKILL.exe" ]; then
        echo "Found ULTRAKILL executable..."
    else
        echo "Failed to locate ULTRAKILL executable, exiting."
        exit
    fi

	# Extract dummy ULTRAKILL.app/
    if [ -f "Darwin.tar.gz" ]; then
        echo "Found Darwin.tar.gz..."
        tar -xzf Darwin.tar.gz
    else
        echo "Failed to locate Darwin.tar.gz, exiting."
        exit
    fi

	# Move essential files into their proper places
    cp -r ULTRAKILL_Data/* ULTRAKILL.app/Contents/Resources/Data/
    mv ULTRAKILL.app/Contents/Resources/Data/Resources/unity\ default\ resources ULTRAKILL.app/Contents/Resources/
    mkdir -p ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/

	# Enable Discord Rich Presence
    if [ -f "discord_game_sdk.dylib" ]; then
        echo "Found discord_game_sdk.dylib..."
        cp discord_game_sdk.dylib ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/
    fi

	# Enable Steamworks
    if [ -f "libsteam_api.dylib" ]; then
        echo "Found libsteam_api.dylib..."
	echo "WARNING: This may break BepInEx compatibility. Remove ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/libsteam_api64.dylib if you wish to use mods. Continuing..."
        cp libsteam_api.dylib ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/libsteam_api64.dylib
    fi

	# Symlinks to avoid crashing
    echo "Symlinking Preferences, Saves, and CyberGrind..."

    ln -s "$(pwd)/Preferences" "$(pwd)/ULTRAKILL.app/Preferences"
    ln -s "$(pwd)/Saves" "$(pwd)/ULTRAKILL.app/Saves"
    ln -s "$(pwd)/Cybergrind" "$(pwd)/ULTRAKILL.app/CyberGrind"

	# Fun fact, apparently MacOS won't let you open untrusted apps without doing this
    echo "You can now open ULTRAKILL.app by right-clicking it and clicking \"Open\"."

else
	# Linux Stuff
    echo "Darwin not found in uname, assuming Linux..."

	# Enable Steamworks
    if [ -f "libsteam_api.so" ]; then
        echo "Found libsteam_api.so..."
        cp libsteam_api.so ULTRAKILL_Data/Plugins/x86_64/steam_api64.so
    else
        echo "libsteam_api.so not found, skipping..."
    fi

	# Enable Discord Rich Presence
    if [ -f "discord_game_sdk.so" ]; then
	echo "Found ./discord_game_sdk.so..."
        cp discord_game_sdk.so ULTRAKILL_Data/Plugins/x86_64
    else
		echo "discord_game_sdk.so not found, skipping..."
    fi

	# Extract dummy UnityPlayer
    if [ -f "ULTRAPORT.tar.gz" ]; then
	echo "Found ./ULTRAPORT.tar.gz..."
        tar -xzf ULTRAPORT.tar.gz
    else
		echo "Failed to locate ./ULTRAPORT.tar.gz, exiting."
    fi

    echo "Linking Cybergrind to CyberGrind to avoid case sensitivity bug..."

    ln -s Cybergrind CyberGrind

    echo "Done! Either launch the game with ./ULTRAKILL.x86_64, or change your Steam launch options to the following to play!"

	# Get path to ULTRAKILL.x86_64, and "echo %command%" so Steam doesn't think that it's a cmdline argument
    echo "\"$(pwd)/ULTRAKILL.x86_64 && echo %command%\""

fi
