particle minecraft:dust .2 1 .2 1 ~ ~ ~ .1 .1 .1 1 1
scoreboard players add @s dt 1
execute if score @s dt matches 80 run kill @s
effect give @s speed 999999 2 true
effect give @s strength 999999 1 true