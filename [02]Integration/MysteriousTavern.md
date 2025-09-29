<span style="color:red">Start this part of the task by reading README.md.</span>

# Quest Reference

## Topline

By talking to a thug on the street, Tav is informed that a building nearby might contain valuable treasure. They just need to find a way in.

Disclaimer: This quest is simplified and written by a programmer specifically for this task. The real quests written by our actual writers are of far higher quality and grander in scale.

## Beginnings

### Characters 

#### Arfur  
Arfur is a Level 1 human thief with no special stats trying to gain access to the house's treasures. He can be found in front of the house.

#### Roth
Roth is a Deep Roth standing in the animal pen next to the house.  
Attacks: [Dancing Lights](https://bg3.wiki/wiki/Dancing_Lights_(Deep_Roth%C3%A9)), [Frenzied Charge](https://bg3.wiki/wiki/Frenzied_Charge), [Gore](https://bg3.wiki/wiki/Gore_(Deep_Roth%C3%A9)), [Dash](https://bg3.wiki/wiki/Dash)

| Level | HP | AC | Speed | STR | DEX | CON | INT | WIS | CHA |
|----|----|----|----|----|----|----|----|----|----|
| 1 | 13 | 10 | 9m (30 ft) | 18 | 10 | 14 | 18 | 10 | 4 |

Resistances: None
Features: Opportunity Attack

#### Ghulen
Ghulen is a level 1 halfling with no special stats. He is arguing with his wife in the stable.

#### Morgya
Morgya is Ghulen's wife, a level 1 halfling women with no special stats. She can be encountered in the stables alongside her husband.

#### Dwalin
Dwalin is a male dwarf standing in the building. He's regular dwarf with level 1 stats.

### Introduction
Tav is walking trough the street.

Ideal Path:  
Tav speaks with Arfur. They succeed the dialog checks leading to Arfur giving them the key to the front door.

Alternate Path 1:  
Tav speaks with Arfur. They fail the check but name 1 reveals that there is another secret entrance through the stables. Taking this path guarantees that the perception check for the hidden stable path succeeds.

Alternate Path 2:  
Tav does not speak with Arfur. They need to find a way in on their own.

## Middle

### Location: Stable
A stable next to the house. The back wall can be destroyed after succeeding a perception check (DC 10), allowing the party to enter the adjecant building.  
Characters: Roth, Ghulen, Morgya

### Ideal Path:
The party arrives in the stable triggering the dialog between Ghulen and Morgya. They quietly avoid the conflict.

### Alternate Path:
The party fails to solve the conflict which turns Ghulen and Morgya hostile towards them. After defeating them, tav can loot the special sword from Ghulen's corpse and the party can proceed to search for an entryway.

## Ending
After entering the building, the party needs to unlock a chest which contains 1000 gold.

### Ideal Path:
The party needs to press three buttons hidden across the rooms which need to be discovered with a DC 10 perception check. Pressing all three buttons unlocks the chest.

## Items:

### Murderous Intent
Description: A rare dagger dealing 1d4 + 1 piercing damage.

Flavor: A fine dagger with a masterfully honed edge. One wonders what a mere stable worker intended to use it for.

Properties: Dagger / Rarity: Rare / Weight: 0.45 kg 0.9 lb / Price: 40 gp 

## Inspiration:

**Haunted One**  
**Title:** Problem solved  
**Description:** Solve a dispute by murdering everyone involved.  
Awarded for starting a fight in the stable.

**Criminal**  
**Criminal:** Threatening  
**Description:** Threaten someone to get what you want.
Awarded for threatening Arfur into giving you the key.

## Flags:
- SC_Spoke_With_Thief
- SC_Thief_Scared
- SC_Found_Treasure
- SC_Fought_In_Stable
- SC_Stable_Listened

## Dialogs:
- Arfur.lsj
- StableArgument.lsj
- Roth.lsj
- Dwalin.lsj
