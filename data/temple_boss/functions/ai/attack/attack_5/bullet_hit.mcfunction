effect give @p[gamemode=survival] nausea 10 10
effect give @p[gamemode=survival] instant_damage
execute as @a[distance=..40] at @s run playsound entity.elder_guardian.curse master @a[distance=..40] ~ ~ ~ 2 2
particle minecraft:dust 0.639 0.2 1 2 ~ ~1 ~ .5 .5 .5 1 50
kill @s