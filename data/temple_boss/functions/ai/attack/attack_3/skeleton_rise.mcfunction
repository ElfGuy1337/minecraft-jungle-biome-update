execute as @a[distance=..40] at @s run playsound ambient.underwater.loop.additions.rare master @a[distance=..40] ~ ~ ~ 1 0
particle block grass_block ~ ~1 ~ .2 .7 .2 1 5
particle block stone ~ ~1 ~ .2 .7 .2 1 5
scoreboard players add @s dt 1
execute if score @s dt matches 25 run function temple_boss:ai/attack/attack_3/skeleton_activate
tp @s ^ ^.1 ^ facing entity @p