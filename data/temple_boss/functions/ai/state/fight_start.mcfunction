playsound minecraft:temple_boss.file_2b master @a[distance=..40] ~ ~ ~ 2 1.2
particle flash ~ ~1 ~ 1 1 1 1 1 force
execute as @e[tag=templeGate, type=minecraft:armor_stand, sort=nearest, limit=4] at @s run fill ^-1 ^3 ^ ^1 ^1 ^ minecraft:jungle_fence
execute as @e[tag=templeGate, type=minecraft:armor_stand, sort=nearest, limit=4] at @s run particle block jungle_fence ^ ^ ^ .5 1 .2 1 30 force
execute as @e[tag=templeGate, type=minecraft:armor_stand, sort=nearest, limit=4] at @s run playsound block.wooden_door.close master @a ~ ~ ~ 2 0
function temple_boss:helper/summon_boss
tag @s add activeFight
#remove spawn tag