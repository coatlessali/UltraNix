# Ultraport
Is Proton not good enough? Are you tired of that stupid alt-tab bullshit that happens in Unity games? Do you want to play on 64-bit only systems? Can you not contain the *silliness*? This one's for you.

## Dependencies
* Requires that you own a legitimate copy of ULTRAKILL. Okay not really but I really hope you do, it's a cool game and the dev team are cool people (I think).
* You need to **PERSONALLY** download the [Steamworks SDK v1.48a](https://partner.steamgames.com/downloads/list) and [Discord Game SDK v2.5.6](https://discord.com/developers/docs/game-sdk/sdk-starter-guide), both of which may require accounts with the respected owners. No, I cannot redistribute these files to you. Don't ask.
* This will not work on platforms *other* than x86_64.

## Usage
* From the Discord Game SDK zip file, extract `/lib/x86_64/discord_game_sdk.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* From the Steamworks SDK zip file, extract `/sdk/redistributable_bin/linux64/libsteam_api.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* Drop the script *and* ULTRAPORT.tar.gz into your ULTRAKILL folder. Run by opening a terminal in your ULTRAKILL folder and running ./ultraport.sh.
* After running, change the launch options to `/path/to/your/ULTRAKILL/ULTRAKILL.x86_64 && echo %command%`.

## Okay, but what does this *actually* do?
* Downloads a dummy Unity player from a project I made.
* Copies the necessary files from the dummy to your game.
* Moves the plugins into their proper place and symlinks lib_steamapi64.so to steam_api64.so.
* Symlinks the Cybergrind folder to CyberGrind to workaround a bug.
* Does not use ANY Ultrakill assets other than the Icon for the UnityPlayer.

## F.A.Q.
* Why do this?
Proton seems to have issues trying to alt-tab out of Unity games. It also allows you to use the Linux version of BepInEx for mod loading. It's also just neat :3

* Scrolling through menus is slow...
I don't know why this happens. You can drag the menus still for navigation, though it's not optimal.

* The lighting bugs out in the sandbox when I spawn a bunch of stuff!
This isn't due to running on Linux, but rather related to bugs and limitations of the OpenGL renderer. Hakita has not enabled Vulkan support for this game (if it's even possible), and DirectX is not available on Linux natively.

* My Cybergrind textures don't show up!
Make sure the Cybergrind folder is either symlinked to or renamed to CyberGrind with a capital G. The game comes with a folder called Cybergrind, but actually looks for a folder called CyberGrind. This bug doesn't occur on Windows because Windows ignore case-sensitivity on folders and files.
