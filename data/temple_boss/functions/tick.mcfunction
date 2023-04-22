execute as @e[tag=aj.temple_boss.root] at @s run function temple_boss:ai/main
execute as @e[type=armor_stand, tag=templeBossSpawn, tag=!activeFight, tag=!bossDefeated] at @s if entity @p[distance=..5, gamemode=survival] run function temple_boss:ai/state/fight_start
execute as @e[type=armor_stand, tag=templeBossSpawn, tag=activeFight, tag=!bossDefeated] at @s unless entity @p[distance=..40, gamemode=survival] run function temple_boss:ai/state/fight_reset
execute as @e[type=armor_stand, tag=templeBossSpawn, tag=activeFight] at @s unless entity @e[type=husk, tag=templeBoss, distance=..40] run function temple_boss:ai/state/fight_win
execute as @e[type=armor_stand, tag=templeSpring] at @s run function temple_boss:temple_spring/spring