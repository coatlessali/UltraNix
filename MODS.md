# Mod Support for UNIX

Note for MacOS Users: Having `libsteam_api64.dylib` in `ULTRAKILL.app/Contents/Frameworks/MonoEmbedRuntime/osx/` will **cause BepInEx to hang at the loading screen.** You can remove this file to proceed, however leaderboard support will be lost.

There are 5 categories:
* Out of the Box - Mod works as-is, with no fixes required.
* Fork Available (Prebuilt) - Mod that has a prebuilt fork available on GitHub.
* Fork Available (Untested) - Mod has a fork available, but due to any number of circumstances I have not been able to build the source code. Untested as a result.
* Issues - Contains issues that can only be fixed by the mod author, *usually* related to [not having shaders compiled for glcore](https://docs.unity3d.com/Manual/shader-compilation.html).
* Borked - Mod does not load, even after attempts to add UNIX compatibility.

## Out of the Box
NOTE: UltrakULL won't receive support properly until the next update releases.
* [UltrakULL](https://github.com/ClearwaterUK/UltrakULL) by [ClearwaterUK](https://github.com/ClearwaterUK)
* [LowTierSisyphus](https://thunderstore.io/c/ultrakill/p/ImNotSimon/LowTierSisyphus/) by [ImNotSimon](https://github.com/ImNotSimon)
* [PizzafaceMod](https://thunderstore.io/c/ultrakill/p/Edith/PizzafaceMod/) by [Edith](https://github.com/DrPHDCat)
* [I WONt SUGARCOAT IT](https://thunderstore.io/c/ultrakill/p/Graze/I_WONt_SUGARCOAT_IT/) by [Graze](https://github.com/The-Graze)
* [PrimePresidents](https://thunderstore.io/c/ultrakill/p/armedturret/PrimePresidents/) by [armedturret](https://github.com/armedturret)

## Fork Available (Prebuilt)
* [UltraModManager](https://thunderstore.io/c/ultrakill/p/Temperz87/UltraModManager/) by [Temperz87](https://github.com/Temperz87/ultra-mod-manager) / [Fix](https://github.com/coatlessali/ultra-mod-manager/releases/tag/v0.5.5-UNIX) by [coatlessali](https://github.com/coatlessali)
* [UltraTweaker](https://thunderstore.io/c/ultrakill/p/Waff1e/UltraTweaker/) by [Waff1e](https://github.com/wafflethings) / [Fix](https://github.com/coatlessali/UltraTweaker/releases/tag/UltraTweaker-UNIX) by [coatlessali](https://github.com/coatlessali)
* [BetterWeaponColourMenu](https://thunderstore.io/c/ultrakill/p/NotABot/BetterWeaponColourMenu/) by [NotABot](https://github.com/nota8ot) / [Fix](https://github.com/coatlessali/BetterWeaponColourMenu/releases/tag/UNIX) by [coatlessali](https://github.com/coatlessali)

## Fork Available (Untested)
* [LowTierMinos](https://thunderstore.io/c/ultrakill/p/ImNotSimon/LowTierMinos/) by [ImNotSimon](https://github.com/ImNotSimon) / [Fork](https://github.com/coatlessali/LowTierMinos/tree/patch-1) by [coatlessali](https://github.com/coatlessali)

## Issues
* [UltraFunGuns](https://thunderstore.io/c/ultrakill/p/Hydraxous/UltraFunGuns/) by [Hydraxous](https://github.com/Hydraxous) / Shaders are missing on all custom models

## Borked
* [WafflesWeapons](https://thunderstore.io/c/ultrakill/p/Waff1e/WafflesWeapons/) by [Waff1e](https://github.com/wafflethings) / Does not load, even after fixing filepaths. Not sure if it's related to AtlasLib or not.

I have confirmed that all mods that work on Linux seem to work on MacOS as well.
