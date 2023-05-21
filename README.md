# Ultraport
Play ULTRAKILL natively on Linux/MacOS!

## CLARIFICATIONS:
* This is ***NOT*** a recompilation of ULTRAKILL. None of the original source code or assets are used, excepting the UnityPlayer icon.
* I will try to keep this up to date, but if the Unity version ever changes (like it did with the "Back to the Cybergrind" update), the game *will not boot.* You can fix this by reproducing a dummy project yourself with the correct game version.
* Also, if any of the devs ever add native Windows libraries to the game, then it *will not run,* and will be *impossible* to fix.
* For the complete ULTRAKILL experience, I still recommend Linux users play the Windows build with Proton, as it is officially supported to some capacity. This is more of a curiosity than anything.
* **Please read the known issues at the bottom of the page.**
* **Playing the game this way is unsupported.** Do not pester the dev team with bugs related to these ports. Do not report bugs that occur while playing this way.
* **At the request of any ULTRAKILL dev/team member, I will take this repo down, no questions asked.**

## Dependencies
* Requires that you own a legitimate copy of ULTRAKILL. There are methods to download it through Steam on Linux and MacOS listed below. No, I will not give you the game. Don't ask.
* (Optional, see below) You need to **PERSONALLY** download the [Steamworks SDK v1.48a](https://partner.steamgames.com/downloads/list) and [Discord Game SDK v2.5.6](https://discord.com/developers/docs/game-sdk/sdk-starter-guide), both of which may require accounts with the respected owners. No, I cannot redistribute these files to you. Don't ask.
* This project is for **x86_64** systems only. To use on any other architecture, such as aarch64, you will need an emulator or translation layer, such as Rosetta for MacOS.


## Downloading ULTRAKILL on Steam (Linux)
* 1. Head to Steam > Settings > Compatibility.
* 2. Check "Enable Steam Play for all other titles."
* 3. Change "Run other titles with:" to "Proton Experimental".
* 4. Steam will prompt you to restart. Click "Restart Now."
* 5. Go to Steam, install ULTRAKILL.

## Usage (Linux)
* 1. (Optional) If you don't care about the Discord or Steam integration working, then you can skip to step 4.
* 2. From the Discord Game SDK zip file, extract `/lib/x86_64/discord_game_sdk.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 3. From the Steamworks SDK zip file, extract `/sdk/redistributable_bin/linux64/libsteam_api.so` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 4. Drop the script *and* `ULTRAPORT.tar.gz` into your ULTRAKILL folder. Run by opening a terminal in your ULTRAKILL folder and running `./ultraport.sh`.
* 5. After running, change the launch options to `/path/to/your/ULTRAKILL/ULTRAKILL.x86_64 && echo %command%`.
* 6. (Optional) If you found this script useful, or have issues, feel free to send me a friend request in the ULTRAKILL or New Blood Discord server and tell me about it.

## Downloading ULTRAKILL on Steam (MacOS)
* 1. Head to your downloads folder, usually `/Users/YourName/Application Support/Steam/steamapps/`.
* 2. Move your `appmanifest_1229490.acf` into this folder.
* 3. Save and restart Steam.
* 4. Steam will automatically download the game into `/Users/YourName/Application Support/Steam/steamapps/common/ULTRAKILL`.

## Usage (MacOS)
* 1. (Optional) If you don't care about the Discord or Steam integration working, you can skip to step 4.
* 2. From the Steamworks SDK zip file, extract `/sdk/redistributable_bin/osx/libsteam_api.dylib` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 3. From the Discord Game SDK zip file, extract `/lib/x86_64/discord_game_sdk.dylib` into your ULTRAKILL folder. Do not copy the folders, just the file itself.
* 4. Drop the script *and* `Darwin.tar.gz` into your ULTRAKILL folder. Run by opening a terminal in your ULTRAKILL folder and running `./ultraport.sh`.
* 5. After running, right click `ULTRAKILL.app` (which will just be called "ULTRAKILL" in Finder), and click Open. **Double clicking will not open the game.**
* 6. (Optional) If you found this script useful, or have issues, feel free to send me a friend request in the ULTRAKILL or New Blood Discord server and tell me about it. **MacOS support is significantly less tested than Linux support.**

## Okay, but what does this *actually* do?
* Downloads a dummy Unity player from a project I made.
* Copies the necessary files from the dummy to your game folder. (Or from the game folder to the dummy, on MacOS)
* Moves the plugins into their proper place.
* Symlinks the Cybergrind folder to CyberGrind to workaround a bug. (Linux)
* Moves all of your game assets and plugins into `ULTRAKILL.app/`. (MacOS)
* Symlinks your `Saves/`, `Preferences/`, and `Cybergrind` into `ULTRAKILL.app/`. (MacOS)

## Notes About Mod Loading
Currently, upstream UltraModManager does not function on non-Win32 platforms. However, I have a fork that fixes this issue that you can [download here](https://github.com/coatlessali/ultra-mod-manager/releases/tag/v0.5.5-UNIX). Install the same way as upstream, using the UNIX version of BepInEx. You can find a list of known working mods in `MODS.md`. When using BepInEx on MacOS, **having libsteam_api64.dylib present will cause a hang at load time.** Removing this file allows BepInEx to work perfectly. More info in `MODS.md`.

## F.A.Q.
* Why do this?

Proton seems to have issues trying to alt-tab out of Unity games. It also allows you to use the Linux version of BepInEx for mod loading. Most crucially, it allows MacOS players to experience ULTRAKILL. It's also just neat :3

## Known Issues (All Platforms)
* A lot of mods that use `\\` or `@"\"` instead of `Path.DirectorySeparatorChar` or `Path.Combine()` do not work on non-Win32 platforms. **Don't go yelling at the devs of these mods.** Instead, if their source code is available, try to fix it yourself and submit a Pull Request.
* GPU performance is slightly worse in some situations/hardware setups.\*
* Outlines are disabled.\*
* Lighting can bug out in some instances.\*
* The name of this project is awful and I am open to suggestions.

## Known Issues (MacOS)
* Mouse sensitivity is *really* low.
* Steamworks SDK Plugin and BepInEx cannot be loaded simultaneously. Doing so will cause a hang on the initial loading screen.
* Movie does not play in the Hall of Shame. (Something to do with how the video is encoded?)
* The Level Colloquially Known as 5-S's TV is missing its screen texture, making the tube transparent.
* ULTRAKILL.app will crash if `Preferences`, `Saves`, and `CyberGrind` are not either present or symlinked in `ULTRAKILL.app/`. The script now handles this for you.

## Known Issues (Linux)
* Scrolling in menus is very slow, and inverted.
* Movie does not play in the Hall of Shame, due to the Linux UnityPlayer not supporting MP4 files.
* The Level Colloquially Known as 5-S's TV shows a white screen.
* Game randomly SIGABRTs when starting. Unknown as to why. Fixed by relaunching.

\* Can be fixed on Linux specifically by the enablement of the Vulkan renderer by the Devteam. According to Victoria in the #ultramods channel, this is a feature that is coming in the next update for testing/feedback.
