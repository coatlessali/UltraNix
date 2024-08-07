# PROJECT IS DEAD... For now.
I have no further interest in working on this for now, and 7-S is currently broken due to an upstream bug involving OpenGL on Unity 2019. Any previous content will continue to be accessible until the Unity version is changed, where a new dummy Unity project built on the 2022 runtime will be needed. PRs are still very much welcome, but I will not be providing further support for the time being. Once the game is updated to Unity 2022, I will try this whole thing again, as that may fix a few longstanding bugs. **Your main alternatives will be Proton (or WINE with DXVK) on Linux, or Whiskey on MacOS.** The script needs a rewrite anyways.

Thank you for your support, and kind messages.
coatlessali, 2024

![Screenshot_20240416-092355_Discord](https://github.com/coatlessali/UltraNix/assets/61166135/62ea8c00-1ad9-4b0b-8b43-86ca06ee5e5f)

# UltraNix
A set of resources and scripts for porting ULTRAKILL to Linux/MacOS.

## NOTICE:
So I really hoped I wouldn't have to put this here, but:

***DO NOT REPORT BUGS RELATED TO THIS PORT TO ANY OFFICIAL CHANNELS.***

***Unofficial Linux/MacOS support is (formerly) maintained by coatlessali.***

***Proton support is maintained by [VALVE](https://github.com/ValveSoftware/Proton/issues/4406).***

Deploying Tactical Hakita Quote:

![20230610_20h03m32s_grim](https://github.com/coatlessali/UltraNix/assets/61166135/86499157-27e0-4c30-bf52-5eb80ff0b064)

## SPEEDRUNNERS:
**The Mods have spoken.** These ports are **not** speedrun legal. Do not submit runs that were performed on either. **Proton/CrossOver** have been deemed legal for runs, though.

Deploying Tactical UKDS Quote:

![Screenshot_20231226-114607_Discord (6)](https://github.com/coatlessali/UltraNix/assets/61166135/96eed89c-d921-4426-a304-e9c70b67f404)

## WIP
This README and associated Wiki are under construction. Thank you.

## Usage
Check [Getting Started](https://github.com/coatlessali/UltraNix/wiki/Getting-Started).

## Okay, but what does this *actually* do?
* Downloads a dummy Unity player for your operating system.
* Copies/Moves necessary files to where the MacOS/Linux UnityPlayers expect them to be, including Steamworks/Discord plugins.
* Symlinks several folders depending on OS. (i.e. `Cybergrind` to `CyberGrind` on Linux to work around a case sensitivity bug.)

## Notes About Mod Loading
You should be able to load mods normally through the UNIX version of BepInEx. Some of them are broken though, as they were written with Windows specific filepaths, or D3D11 shaders only.

## F.A.Q.
Moved to Wiki

## Known Issues
Moved to [The Wiki](https://github.com/coatlessali/UltraNix/wiki/Known-Issues)

## Credits
* PCGamingWiki: Original source for the Unity Linux porting guide.
* analogfeelings for demonstrating this being possible on MacOS.
* Mesa for their incredible drivers that allow this game to be played on very low end hardware at acceptable framerates.
* The ULTRAKILL Development Team for making one of the best games I've ever played. (Victoria in specific for giving insights on things like 7-S breaking under OpenGL.)
* The wonderful developers in the UKDS #ultramods channel for being receptive to the idea of letting me help get their mods working on this silly little port.
* Tommy Tallarico for creating the amd64 architecture and OpenGL. His mother is very proud.
