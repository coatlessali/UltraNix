# Hey.
This project is permanently dead, and the repository will be archived. 

Let's talk about it, shall we?

### But first, what should we do?
- For the Intel Mac people: [Check out this guide by Arensika. It's awesome.](https://arensika.neocities.org/ultramac)
- For the Apple Silicon Mac users: [Try Whisky](https://getwhisky.app/). There are some guides on getting Steam running, and it works pretty well.
- For x86_64 Linux users: You can now force either OpenGL or *Native* Vulkan rendering using either `-force-glcore` or `-force-vulkan`. This has dropped the requirement for DXVK, which should lower the system requirements significantly, especially in the required number of Vulkan extensions. Unfortunately this doesn't fix a CPU bottleneck, but the performance improvements in the revamp update should help with this.
- For ARM64 or RISC-V Linux, wait for advancements in Box64 and FEX-Emu.

### Why end it now?
So, today the ULTRA_REVAMP update dropped (which is great, by the way), so I immediately went to go grab the correct Unity Editor and dumped a native executable into the ULTRAKILL folder.

The farthest I got was a black screen. It seems the game now requires BCrypt.dll to function correctly. This is a proprietary Windows library, and even trying to drop it into the correct folder unfortunately doesn't work to get past the initial black screen.

There is a chance that the new intro video is an MP4, and since it can't play it crashes, though I doubt this, and I think the errors would've reflected it.

### So what's the solution?
As of now, I don't believe that anything is really needed on the Linux side. Proton works well enough, and DXVK is no longer needed for full functionality.

The place a native port is really important is actually Apple Silicon Macs. I don't foresee ARM Linux devices taking off any time soon, but all Macs going forward will be ARM, and no matter what, emulation and translation together will encur a performance hit. I really hope we see one someday.

### What if a native port comes?
I will happily open a mod compatibility tracker, and help port mods.

### Closing Thoughts
In the long run, something like this working for even a brief window of time in the state it did was frankly a miracle. This was never really going to be a sustainable long term way to play the game.

Thank you to the dev team for allowing this to exist for as long as it did, even if they might've never known this existed.

Thank you for your support, and kind messages.
coatlessali, 2024

Credits:
* PCGamingWiki: Original source for the Unity Linux porting guide.
* analogfeelings for demonstrating this being possible on MacOS.
* Mesa for their incredible drivers that allow this game to be played on very low end hardware at acceptable framerates.
* The ULTRAKILL Development Team for making one of the best games I've ever played. (Victoria in specific for giving insights on things like 7-S breaking under OpenGL.)
* The wonderful developers in the UKDS #ultramods channel for being receptive to the idea of letting me help get their mods working on this silly little port.
* Tommy Tallarico for creating the amd64 architecture and OpenGL. His mother is very proud.
