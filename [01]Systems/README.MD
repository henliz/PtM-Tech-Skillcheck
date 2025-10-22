<!-- https://gist.github.com/Cube707/810e9441de3aa2e2a2cc79eb4f0adaaf -->

<!-- Kaylinhh
October 22, 2025 -->

Congratulations on passing the Gameplay task! You can now proceed to Systems'. While the previous task tested general Toolkit knowledge, this task will focus on advanced scripting. 

## Systems Task

Setup the Toolkit and clone the repository if you haven't already. On a separate branch, you're going to:

- Generate a Recruitment Debug Script to add NPCs to the Player's Party
- Generate a Dismissal Debug Script to remove NPCs from the Player's Party

NPCs will be provided for candidates to use in their script implementation. All three NPCs shall be readily available to be added to the Player’s Party via TextEvents through the Toolkit Console.

> [!TIP]
> Pseudocode of the Scripts

//Recruitment
`IF`
`TextEvent()`
`CheckForPlayerCharacter()`
`CheckForNPCIsNotPlayer()`
 `THEN`
`PlaceNPCOnMap();`
`MoveNPCToPlayer();`
`AddNPCToParty();`

`//Dismissal`
`IF`
`TextEvent()`
`CheckForPlayerCharacter()`
`THEN`
`DismissFromParty();`

Once completed, submit a video recording of the scripts working through the Toolkit Console Window, adding and removing the NPCs from the Player’s Party. Also make a Pull Request describing the feature, key file changes, present issues, etc.
