particle minecraft:dust 0.639 0.2 1 2 ~ ~.5 ~ .4 .1 .4 1 5
scoreboard players add @s dt 1
execute if score @s dt matches 40 run kill @s
tp @s ^ ^ ^.75
execute if entity @p[distance=..3] run function temple_boss:ai/attack/attack_5/bullet_hit