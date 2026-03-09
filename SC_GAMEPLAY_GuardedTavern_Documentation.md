# SC_Tavern

## Implemented Changes

- Added a guard with unique stats at the tavern entrance.
- Added the key `SC_TavernKey` to the guard's inventory.
- Added a hidden wall button as an alternate way to unlock the door. Main logic in a story `SC_Tavern`, regoin is `Door Button`. 
- Assigned `PUZZLE_HighlightPerception` to the button so it can be discovered through a successful Perception check.
- Added multibranch dialog `SC_GAMEPLAY_GuardDialog` to the guard with `SC_Tavern_SpokeToGuard` flag and `SC_AllowToEnter` flag. `SC_AllowToEnter` used in `SC_Tavern` story, region is `Door From Dialogue`.
