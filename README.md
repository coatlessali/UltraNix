# UltraNix
A set of resources and scripts for porting ULTRAKILL to Linux/MacOS.

## NOTICE:
So I really hoped I wouldn't have to put this here, but:

***DO NOT REPORT BUGS RELATED TO THIS PORT IN ANY OFFICIAL CAPACITY.***

***Unofficial Linux/MacOS support is maintained by ME.***

***Proton support is maintained by [VALVE](https://github.com/ValveSoftware/Proton/issues/4406)
.***

Deploying Tactical Hakita Quote:

![20230610_20h03m32s_grim](https://github.com/coatlessali/UltraNix/assets/61166135/86499157-27e0-4c30-bf52-5eb80ff0b064)

## SPEEDRUNNERS:
**The Mods have spoken.** These ports are **not** speedrun legal. Do not submit runs that were performed on either. **Proton/CrossOver** have been deemed legal for runs, though.

Deploying Tactical UKDS Quote:

![Screenshot_20231226-114607_Discord](https://github.com/coatlessali/UltraNix/assets/61166135/72f1b609-fea4-4a19-aad3-12404a7cf543)

## WIP
This README and associated Wiki are undergoing a rewrite soon to address the latest ULTRAKILL patch.

## CLARIFICATIONS:
Moved to [the Wiki](https://github.com/coatlessali/UltraNix/wiki/F.A.Q.)

## Usage
Moved to [here](https://github.com/coatlessali/UltraNix/wiki/Downloading-ULTRAKILL-and-Plugins), and [here](https://github.com/coatlessali/UltraNix/wiki/Running-the-Ultraport-Script)

## Okay, but what does this *actually* do?
* Downloads a dummy Unity player from a project I made.
* Copies the necessary files from the dummy to your game folder. (Or from the game folder to the dummy, on MacOS)
* Moves the plugins into their proper place.
* Symlinks the Cybergrind folder to CyberGrind to workaround a bug. (Linux)
* Moves all of your game assets and plugins into `ULTRAKILL.app/`. (MacOS)
* Symlinks your `Saves/`, `Preferences/`, and `Cybergrind` into `ULTRAKILL.app/`. (MacOS)

## Notes About Mod Loading
A lot of mods that use `\\` or `@"\"` instead of `Path.DirectorySeparatorChar` or `Path.Combine()` do not work on non-Win32 platforms. **Don't go yelling at the devs of these mods.** Instead, if their source code is available, try to fix it yourself and submit a Pull Request.

## F.A.Q.
* Why do this?

Proton seems to have issues trying to alt-tab out of Unity games. It also allows you to use the Linux version of BepInEx for mod loading. Most crucially, it allows MacOS players to experience ULTRAKILL. It's also just neat :3

## Known Issues
Moved to [The Wiki](https://github.com/coatlessali/UltraNix/wiki/Known-Issues)
