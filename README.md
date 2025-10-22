<!-- https://gist.github.com/Cube707/810e9441de3aa2e2a2cc79eb4f0adaaf -->

<!-- Kaylinhh
October 1, 2025 -->

<div>
	<h1 align="center"><b>Path to Menzoberranzan</b></h1>
	<h3 align="center"><i>Technical Skill Check</i></h3>
</div>

<!-- placeholder intro speech -->
<div align="justify">
  <p>Welcome to the Path to Menzoberranzan's technical skillcheck! Thank you for your interest in our project. Before getting into it, you'll have to set up your working environment. First, you'll have to complete the Gameplay task (no matter which track you applied to!), and then if you applied to it, the Integration or the Systems task. Good luck!</p>


<p><strong>Director's note:</strong> Hi all, I’m Hen, Technical Director for Path to Menzoberranzan. While this repository is public on my github acc for ease of access, please don’t jump in and complete the tasks unless you’ve officially joined the process. You should only attempt this skill check if you’ve already <a href="https://discord.gg/ptm" target="_blank" rel="noopener noreferrer">joined our Discord server</a>, filled out the application form, and been invited to begin. This ensures fairness to applicants and helps us keep track of everyone progressing through the pipeline. Thank you ❤︎</p>
</div>

___

<h2>Table of Contents</h2>

- [Getting Started](#getting-started)
  - [*Installing the Toolkit*](#installing-the-toolkit)
  - [*Setting up Moonglasses*](#setting-up-moonglasses)
  - [*Getting a Git version control software*](#getting-a-git-version-control-software)
  - [*Cloning and Setting up the repository*](#cloning-and-setting-up-the-repository)
- [Gameplay Task](#gameplay-task)
- [BG3 Toolkit Resources](#bg3-toolkit-resources)

___

<div align="justify">
  
## Getting Started
Before getting to the skillcheck, you will need to have Baldur's Gate 3, the BG3 Toolkit with Moonglasses enabled, and any Git version control software of your choosing installed, then clone this repo onto your PC.

### Installing the Toolkit
Install the Toolkit, which is in the Steam store under "Baldur’s Gate 3 Toolkit", in the Tools section. If you don’t see it in your library, you might need to update your sidebar filter settings. Make sure you have Tools selected.
Then you'll have to install the BG3 DLC named Toolkit Data. This is under the DLC section on Steam (right-click BG3 in your library and select Properties, then go to DLC).

### Setting up Moonglasses
The toolkit must be unlocked to use all the features - this is what Moonglasses does.

</div>

> [!NOTE]
> These files are not viruses. They contain a "trojan" only because Harmony (The tool that lets us inject new code into the .dlls and break crashes and add new features) can be flagged by Windows systems.

<div align="justify">
	
1. [Download the files](https://cdn.discordapp.com/attachments/1334023955383582810/1420093542176526347/Moonglasses-Build-Release-586.zip?ex=68de07ec&is=68dcb66c&hm=90321d5455934b4bf7420e4570ee89ef5b5b899093f321b1899a3edf10747004&).
2. Run unlock.bat, this unblocks all the .dll files that Windows complains about.
3. Extract dxgi.dll file and MoonGlasses Folder into the 'Baldurs Gate 3 Toolkit' folder (steamapps\common\Baldurs Gate 3 Toolkit).
4. Run the editor. If it crashes, the .dlls may be blocked, still. Right click them and go to Properties. On the bottom make sure it doesn't say they're blocked.
5. If you're still crashing, please uninstall the editor, make sure the folder is empty, reinstall it, then try again.

Once set up, if you open the toolkit, you should see (MoonGlasses v1.x.x.x) in the title bar. If it's there, that means the toolkit was successfully unlocked.

### Getting a Git version control software
Any [Git version control software](https://git-scm.com/downloads/guis) such as [GitHub Desktop](https://desktop.github.com/download/).


### Cloning and Setting up the repository
Clone this repo anywhere onto your PC (we recommend placing it in your Documents folder, or any other location that you store Git repos) using your version control software. It will be saved as 'PtM-Tech-Skillcheck'.

> This is a manual setup and requires you to manually copy the files from the git folder into the game data folder.
1. Ensure that hidden files and folders are displayed in your machine, follow this [**guide here**](https://support.microsoft.com/en-us/windows/view-hidden-files-and-folders-in-windows-97fbc472-c603-9d90-91d0-1166d1d9f4b5).
2. Now we must open up aforementioned folder called **'Ptm-Tech-Skillcheck'** and move all of its contents to the root directory of your Baldur's Gate 3. You can follow [**this guide**](https://steamcommunity.com/sharedfiles/filedetails/?id=760447682).
3. Once this is done, go to your version control software and add an existing repo - the path should be BG3's directory.
4. Now that we've got the repository downloaded to our local machine, and moved all of the required files to appropriate Baldur's Gate 3 installation location - once we launch up the [**Baldur's Gate 3 Toolkit**](https://mod.io/g/baldursgate3/r/installing-the-toolkit), we'll be able to [**select project**](https://mod.io/g/baldursgate3/r/editor-navigation) in the main editor page. 

</div>

>[!NOTE]
>If you get the "Filename is too long error" message, right click the area with the repository name, below the menu bar. Click "Open in Command Prompt", then type `git config --global core.longpaths true`.
>
> If after your initial cloning of the repo, you see 100s or 1000s of changes, run this command: `git config --global core.autocrlf false`.
>
> If you see an error like "git command not found" in the command prompt, then you need to [install git](https://git-scm.com/downloads/win). After installing git, restart Github desktop and return to the command prompt.

___

## Gameplay Task

Congratulations, you're done setting up! You can now get started on the skill check!

> [!WARNING]
> Patch 8 has made scripting a bit unstable. When rebuilding story scripts, the toolkit may crash when entering game mode. This can be avoided by using the File -> "Reload Level" option before entering into game mode.  You can build and reload story scripts via the Story Editor's file menu. "Build and Reload" is generally safe but will crash sometimes. "Generating Definitions, Build and Reload" seems to require a "Reload Level" after. The toolkit's File -> "Reload Level and Story" results in a crash entering game mode consistently. Sometimes this option is helpful to make sure everything level and story is reset, but follow it up with another "Reload Level".

Once you load the "GAMEPLAY_Tavern" Level, you should find a tavern. Create the following setup:

> You want to get in the tavern. A guard is standing in front of you. The door is locked, you'll have to convince the guard to let you in... one way or another. There might also be a more discreet way to go in.

To pass the skill check, you'll need:
- An NPC with specific stats,
- A simple multi-branch dialogue with a flag that is set after the first encounter with the NPC,
- A locked door that requires either a key (placed in the NPC’s loot) or a skill check in the dialogue to open the door,
- A hidden button that can unlock the door (revealed after a successful Perception check), 
- A short documentation file describing how each element (dialogue, flag, Osiris, stats) connects.

>[!TIP]
> For naming conventions, you can check out the CONTRIBUTING.md in [02]Integration. Also please check out the Toolkit Resources just below, it'll help you complete the skill check.
>
> Don't forget to disable the "Add impossible flag to dialogue" in the preferences, to prevent any dialog errors.

<div align="justify">
	
You will have 2 weeks to complete this task upon your application being accepted. Once you're done, reach out to henliz or Kaylinh. If you applied to Integration or Systems, you may proceed upon approval of the Gameplay task, and have 2 weeks to complete your next task in the corresponding folder.

</div>

## BG3 Toolkit Resources
Some useful YouTube tutorials to get started:
- [Baldur's Gate 3 Modding: Basic Scripting and Combat](https://www.youtube.com/watch?v=aC1D7mCeSjE)
- [Baldur's Gate 3 Modding: Dialogue and Timeline Cinematics Intro](https://www.youtube.com/watch?v=J7taHtDDBrI)
- [Baldur's Gate 3 Toolkit : Stats Editor](https://www.youtube.com/watch?v=QDaQlr1LrlY)

Other resources:
- [BG3 Modding cheat sheet](https://docs.google.com/spreadsheets/d/1h7TgQBpsRvrvt6ZrGTp5ps8bgHsghEfxqPdzhpYx3Q0)
- [BG3 toolkit guides on mod.io](https://mod.io/g/baldursgate3/r)
- [BG3 search engine](https://bg3.norbyte.dev/search)
- [Osiris API](https://docs.baldursgate3.game/index.php?title=Osiris_API)
  - [Events](https://docs.baldursgate3.game/index.php?title=Category:Osiris_Events)
  - [Queries](https://docs.baldursgate3.game/index.php?title=Category:Osiris_Queries)
  - [Calls](https://docs.baldursgate3.game/index.php?title=Category:Osiris_Calls)
- [BG3 Modding Discord](https://discord.gg/4rCzfyNEBP) (we strongly recommend you to join this discord server)





