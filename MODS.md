# Mod Support for UNIX

Note for MacOS Users: Having `libsteam_api64.dylib` in `ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/` will **cause BepInEx to hang at the loading screen.** You can remove this file to proceed, however leaderboard support will be lost.

Here are some reasons your mod might not work correctly:
* File paths in the code are specific to Windows. (i.e. `\\` or `@"\"` instead of `Path.DirectorySeparatorChar()`, not using `Path.Combine()`.)
* Shaders aren't compiled for your platform. (OpenGL on MacOS/Linux)

## r2modman

Alright, so here's how to get r2modman working:

1. Don't.

After using it for a little bit, I've determined that it's a bit of a cluttered tool, and a lot of mods (even my own are guilty of this) don't follow a set packaging format, since there isn't really a defined standard. There's also no easy way to launch ULTRAKILL modded this way, and if you really want an easier solution, you can just change `ULTRAKILL.x86_64` in your launch options to `run_bepinex.sh`. The way r2modman uses a separate directory for mods can also cause issues and confusion with newbies.

**If you choose to use r2modman, I will not provide any support. You are free to do so, but you are on your own.**

## Compatibility List

There are 5 categories:
* Out of the Box - Mod works as-is, with no fixes required.
* Fork Available (Prebuilt) - Mod that has a prebuilt fork available on GitHub.
* Fork Available (Untested) - Mod has a fork available, but due to any number of circumstances I have not been able to build the source code. Untested as a result.
* Issues - Contains issues that can only be fixed by the mod author, *usually* related to [not having shaders compiled for glcore](https://docs.unity3d.com/Manual/shader-compilation.html).
* Borked - Mod does not load, and requires intervention from the mod author.

## Out of the Box
NOTE: UltrakULL won't receive support properly until the next update releases.
* [UltraModManager](https://thunderstore.io/c/ultrakill/p/Temperz87/UltraModManager/) by [Temperz87](https://github.com/Temperz87/ultra-mod-manager)
* [UltraNixVideoFix](https://github.com/coatlessali/UltraNixVideoFix) by [coatlessali](https://github.com/coatlessali)
* [UltrakULL](https://github.com/ClearwaterUK/UltrakULL) by [ClearwaterUK](https://github.com/ClearwaterUK)
* [LowTierSisyphus](https://thunderstore.io/c/ultrakill/p/ImNotSimon/LowTierSisyphus/) by [ImNotSimon](https://github.com/ImNotSimon)
* [PizzafaceMod](https://thunderstore.io/c/ultrakill/p/Edith/PizzafaceMod/) by [Edith](https://github.com/DrPHDCat)
* [I WONt SUGARCOAT IT](https://thunderstore.io/c/ultrakill/p/Graze/I_WONt_SUGARCOAT_IT/) by [Graze](https://github.com/The-Graze) / Severe performance penalty, also occurs on Windows. Use at your own risk.
* [PrimePresidents](https://thunderstore.io/c/ultrakill/p/armedturret/PrimePresidents/) by [armedturret](https://github.com/armedturret)
* [PluginConfigurator](https://thunderstore.io/c/ultrakill/p/EternalsTeam/PluginConfigurator/) by [EternalsTeam](https://github.com/eternalUnion)
* [Ultrapain](https://thunderstore.io/c/ultrakill/p/EternalsTeam/UltraPain/) by [EternalsTeam](https://github.com/eternalUnion)
* [TheLInLustStandsForLesbian](https://thunderstore.io/c/ultrakill/p/NotABot/TheLInLustStandsForLesbian/) by [NotABot](https://github.com/nota8ot)
* [UKButt](https://github.com/PITR-DEV/ukbutt-mod) by **PITR\*** **(18+)**
* [LowTierMinos](https://thunderstore.io/c/ultrakill/p/ImNotSimon/LowTierMinos/) by [ImNotSimon](https://github.com/ImNotSimon)
* [UltraFunGuns](https://thunderstore.io/c/ultrakill/p/Hydraxous/UltraFunGuns/) by [Hydraxous](https://github.com/Hydraxous)
 
## Fork Available (Prebuilt)
* [UltraTweaker](https://thunderstore.io/c/ultrakill/p/Waff1e/UltraTweaker/) by [Waff1e](https://github.com/wafflethings) / [OUTDATED Fix](https://github.com/coatlessali/UltraTweaker/releases/tag/UltraTweaker-UNIX) by [coatlessali](https://github.com/coatlessali)
* [BetterWeaponColourMenu](https://thunderstore.io/c/ultrakill/p/NotABot/BetterWeaponColourMenu/) by [NotABot](https://github.com/nota8ot) / [Fix](https://github.com/coatlessali/BetterWeaponColourMenu/releases/tag/UNIX) by [coatlessali](https://github.com/coatlessali)

## Fork Available (Untested)
* None so far

## Issues
* None so far

## Borked
* [WafflesWeapons](https://thunderstore.io/c/ultrakill/p/Waff1e/WafflesWeapons/) by [Waff1e](https://github.com/wafflethings) / PENDING UPDATE - Will be moved to 'OotB'
* [AtlasLib](https://thunderstore.io/c/ultrakill/p/Waff1e/AtlasLib/) by [Waff1e](https://github.com/wafflethings/) / PENDING UPDATE - Will be moved to 'OotB'

\* Please don't ask for support regarding this, at least without clarifying that you're playing on an unsupported platform. The only part of this that has been tested is the client being able to connect to Intiface Central.
