data merge entity @s {Item:{tag:{Damage:0}}}
particle end_rod ~ ~.8 ~ 0.1 0.2 0.1 .1 10 force
execute as @e[type=item, sort=nearest, limit=1, distance=..10, nbt={Item:{id:"minecraft:diamond"}}] at @s if block ~ ~ ~ water run kill @s
tag @s add springRestored