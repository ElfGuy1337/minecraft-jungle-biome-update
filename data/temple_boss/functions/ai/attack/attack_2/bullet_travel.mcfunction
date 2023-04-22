execute as @a[distance=..40] at @s run playsound block.amethyst_block.chime master @a[distance=..40] ~ ~ ~ 2 2

particle minecraft:dust .2 1 .2 2 ~ ~.5 ~ .1 .1 .1 1 1
scoreboard players add @s dt 1
execute if score @s dt matches 40 run kill @s
tp @s ^ ^ ^.5
execute if entity @p[distance=..1.5] run function temple_boss:ai/attack/attack_2/bullet_hit