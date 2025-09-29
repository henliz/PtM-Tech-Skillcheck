
<!-- GitHub flavored Markdown syntax -->
<!-- https://gist.github.com/Cube707/810e9441de3aa2e2a2cc79eb4f0adaaf -->

<!-- Original: GusTheAnt, March 9, 2025 -->
<!-- Updated for Skill Check: Myrktil, September 29, 2025 -->

<span style="color:red">Start this part of the task by reading README.md.</span>

<div align="center">
	<h1><b>Path to Menzoberranzan</b></h1>
	<h3><i>An unofficial Baldur's Gate 3 campaign</i></h3>
	<h4>Contributing Guide</h4>
</div>

<div align="justify">
	<p>
		Thank you for your interest in contributing to Path to Menzoberranzan. This is a very ambitious project that is currently early in development. There is a long way to go and every contribution helps push it closer to the finish line. This guide lays out basic rules and guidelines for contributing to PTM.
	</p>
	<p>
		Due to the large scope of the project and the length of time until release, it is important that rules and guidelines be established and followed early. However, these rules and guidelines are not laws set in stone. Follow your best judgement and feel free to propose changes and additions to this and other documents, or to the project itself. Please remember that there currently are, and will be, a large number of people contributing to PTM during its development. For the sake of productivity and everyone's sanity we ask all contributers to put forth an effort into following naming conventions and, where appropriate, providing good documentation of your work as you go.
	</p>
</div>

___

<h2>Table of Contents</h2>

- [Naming Conventions](#naming-conventions)
	- [Files Names](#files-names)
- [Tasks \& Ticketing](#tasks--ticketing)
- [Branching](#branching)
- [General Guidelines](#general-guidelines)
	- [Game Files \& Assets](#game-files--assets)
	- [Dialog Files](#dialog-files)
	- [Script Files](#script-files)
- [Creating Pull Requests](#creating-pull-requests)
	- [*GitHub Desktop*](#github-desktop)
- [FAQ/Help](#faqhelp)

## Naming Conventions

Path to Menzoberranzan uses a combination of `PascalCase` and `Snake_Case` naming schemes with all files. 
- [More info on Pascal Case](https://www.theserverside.com/definition/Pascal-case)
- [More info on Snake Case](https://developer.mozilla.org/en-US/docs/Glossary/Snake_case)

### Files Names

Most files created for PTM should begin with `PTM_`. This is to ensure the assets used in PTM are differentiated from the base game assets so there are no conflicts or game breaking bugs, and one of few "laws" set in stone for the duration of project development.

Best practice and seeing the Larian devs example should result in almost all file names-scripts, level templates, dialog files, etc.-following this naming structure:

`PTM_{Act#}_{LevelAbbreviation}_{FileDescription}`
> [!IMPORTANT]
> Examples:
> - `PTM_WP_AD_EggTrader` refers to generic automated dialog in the Promenade level between an egg trader and a customer.
> - `PTM_BCH_TideScript` refers to the story goal file that controls the tide on the beach level at the beginning of the campaign.

___

## Branching

Most new branches will be created from the `development` branch, or from a specified branch in an OP ticket description.

All in-development branches should fall under one of the following categories:

| Category  | Description |
|:---------:|:------------|
| Bugfix	| Fixes for features or maps. Bugfixes should entail ONLY changes for a single issue, or a collection of issues caused by the same source.
| Feature	| Includes, but is not limited to; 2D/3D models, artwork, characters, dialogue, music, sounds, story scripts, themes, visual effects,  etc.
| Map		| Primarily used by the Spatial Design team. Used for map creation and ongoing level creation.
| Misc		| Any additional, not categorized additions to the project. Such as documentation, git repository or configuration changes, CI/CD processes, tools you have created for the dev team to use, etc.

**When creating a new branch, the name should follow this structure:**
`{Category}/{Name}_OP{Tkt#}`
> [!IMPORTANT]
> Example:
> - `feature/PromenadeItemOwnership_OP52` refers to Open Project ticket 52 for assigning item ownership to vendors in the Promenade level.

> *[Click here](./tutorials/branching.md) for a step-by-step guide on creating a new branch if needed.*

___

## General Guidelines

As previously stated, almost all guidelines for PTM are not set in stone and are flexible. However, please ensure that your naming conventions, work package comments, or documentation contained in game files are well-written and have enough information to make sense to someone else who might have to come behind you a year or more from now to debug a script or dialog file, make changes to a map, or fix anything that might break.

### Game Files & Assets

<h4>Character Models, Level Templates, Prefabs, Scenery, Etc.</h4>

All PTM game files and assets should be named following the general guidance of the naming scheme of the base game files, [as discussed above](#files-names). They should be placed under the **"Wokeen"** section of the **"Root Template"** tab in the BG3 Toolkit window and placed inside of the appropriate subfolder-such as "Character", "Item", "Scenery", "VFX", etc. If there is not an appropriate subfolder, or you are unsure of where to place something, do not hesitate to ask and discuss with other devs in the PTM Discord server.

### Dialog Files

If you are creating a dialog file that will have flags checked, set, or unset, please make sure to document them in a script file, in an OP ticket comment, or in the comments section at the top of the dialog tree creation window in the BG3TK.

Most dialog work packages will contain a Word doc with a general overview of the encounter and a `.canvas` file in the file attachments tab. You can open this file with [Obsidian](https://obsidian.md/). The `.canvas` file contains the story or encounter dialog lines, flag info, and other relevant information needed to create all nodes in the dialog tree.

### Script Files

All script and story goal files should be placed as a sub-item of the `_PTM` category in the script and story editors. You can find it under `_Start/_PTM` in the sidebar.

When creating a new script or story goal, please document your code throughout the file with code comments. Osiris code comments can be created with `//` anywhere on any line.

Generally, it is best to provide info in code comments at the top of your goal/script file. Information such as; your name, OP ticket number, a quick description of what the file does, and dialog file names (With the file UUID) and any relevant dialog flags if you are creating a story goal involving dialog.

> [!IMPORTANT]
> Example:
> 
> *`_Start/_PTM/_Promenade/ShadySide4_MuggingEncounter`*
> ```
> KB
> // GusTheAnt
> // OP 99
> // https://menzoproject.com/projects/pathtomenzoberranzan/work_packages/99/activity
>
> // Dialog file
> // PTM_ShadyArea4_MuggingEncounter_2c3da973-8263-b93e-dbbb-45503a247639
>
> // Relevant dialog flags
> // PTM_WP_Mugging_NevCallout			Player mocks Nev
> // PTM_WP_Mugging_NevTurf				The party will be attacked on sight if seen again
> // PTM_WP_Mugging_RemoveCombatant4		Nev shoots Combatant 4, removing them from the fight
> // PTM_WP_Mugging_SeeThruMug			Player sees through the staged mugging
> // PTM_WP_Mugging_SetBleeding			Player is stabbed by Nev & co
> // PTM_WP_Mugging_StartCombat			Start combat with Nev
> // PTM_WP_Mugging_ViolentMugged			Player initiates combat with Nev
>
> //REGION Short headline summary
> ...dialog logic...
> //END_REGION
> ```

You can also block related sections of code with the `//REGION [code description]` and `//END_REGION` tags.

Ultimately, it is important to remember that the story goals and scripts do ***a lot*** of heavy lifting in Baldur's Gate 3. As development continues on PTM, maps will change, dialog will be added, removed, or changed. Encounters will be adjusted. Side quests will be added or completely scrapped. A lot of other volunteer devs will likely have to open and change your scripts for one reason or another, just as you will likely have to modify others scripts. Be a pal to yourself six months from now and to those who will come a year or two after you and document your code.

If you find a piece of code from the base game files that helps you solve an issue, code comment the file name and line number. Or comment the link to a [BG3 search engine](https://bg3.norbyte.dev/search) result where you found a solution to a problem piece of code. We are still in the early days of the BG3 modding community and there are still many things left to discover with Osiris scripting. Don't let knowledge get lost - taking 30 minutes to document now saves each person down the line an hour of searching for a solution. ***No documentation is worse than too much.***
