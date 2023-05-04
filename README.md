# Ultraport
Is Proton not good enough? Are you tired of the alt-tab bug that happens in Unity games? Is fullscreen not working correctly? Do you want to play on 64-bit only systems? Can you not contain the *silliness?* This one's for you.

## CLARIFICATIONS:
After seeing a couple of messages in the ULTRAKILL Discord server, I felt the need to clarify a few things.
* This is ***NOT*** a recompilation of ULTRAKILL. None of the original source code or assets are used, excepting the UnityPlayer icon.
* I will try to keep this up to date, but if the Unity version ever changes (like it did with the "Back to the Cybergrind" update), the game *will not boot.* You can fix this by reproducing a dummy project yourself with the correct game version.
* Also, if any of the devs ever add native Windows libraries to the game, then it *will not run,* and will be *impossible* to fix.
* If you want Vulkan support, then go show support for it in the feedback channel. There are currently no Vulkan shaders compiled for the game, but if the Windows version/official release gets Vulkan support, then it will work on the Linux Player too.
* **At the request of any ULTRAKILL dev/team member, I will take this repo down, no questions asked.**

## Dependencies
* Requires that you own a legitimate copy of ULTRAKILL. 
* (Optional, see below) You need to **PERSONALLY** download the [Steamworks SDK v1.48a](https://partner.steamgames.com/downloads/list) and [Discord Game SDK v2.5.6](https://discord.com/developers/docs/game-sdk/sdk-starter-guide), both of which may require accounts with the respected owners. No, I cannot redistribute these files to you. Don't ask.
* This will not work on platforms other than x86_64.

## Usage
* 1. (Optional) If you don't care about the Discord or Steam integration working, then you can edit the ultraport.sh script to remove lines 3-16 & 24-7, and skip to step 4.
* 2. From the Discord Game SDK zip file, extract `/lib/x86_64/discord_game_sdk.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 3. From the Steamworks SDK zip file, extract `/sdk/redistributable_bin/linux64/libsteam_api.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 4. Drop the script *and* ULTRAPORT.tar.gz into your ULTRAKILL folder. Run by opening a terminal in your ULTRAKILL folder and running ./ultraport.sh.
* 5. After running, change the launch options to `/path/to/your/ULTRAKILL/ULTRAKILL.x86_64 && echo %command%`.
* 6. (Optional) If you found this script useful, or have issues, feel free to send me a friend request in the ULTRAKILL or New Blood Discord server and tell me about it.

## Okay, but what does this *actually* do?
* Downloads a dummy Unity player from a project I made.
* Copies the necessary files from the dummy to your game folder.
* Moves the plugins into their proper place and renames `lib_steamapi64.so` to `steam_api64.so`.
* Symlinks the Cybergrind folder to CyberGrind to workaround a bug.
* Does not use ANY Ultrakill assets other than the Icon for the UnityPlayer.

## F.A.Q.
* Why do this?

Proton seems to have issues trying to alt-tab out of Unity games. It also allows you to use the Linux version of BepInEx for mod loading. It's also just neat :3

* Why is scrolling through menus so slow?

I don't know why this happens. You can drag the menus still for navigation, though it's not optimal.

* Why does the lighting bug out in the sandbox when I spawn a bunch of stuff?

This isn't due to running on Linux, but rather related to bugs and limitations of the OpenGL renderer. Hakita has not enabled Vulkan support for this game (if it's even possible), and DirectX is not available on Linux natively.

* Why don't my Cybergrind textures show up?

Make sure the Cybergrind folder is symlinked to CyberGrind with a capital G. (`ln -s Cybergrind/ CyberGrind/`) The game comes with a folder called Cybergrind, but actually looks for a folder called CyberGrind. This bug doesn't occur on Windows because Windows ignore case-sensitivity on folders and files.
