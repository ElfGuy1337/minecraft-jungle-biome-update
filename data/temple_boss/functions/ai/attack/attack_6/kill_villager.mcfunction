effect give @e[type=husk, tag=templeBoss, sort=nearest, limit=1, distance=..60] instant_damage 1 4 true
particle flash
particle minecraft:dust 1 0.2 0.2 10 ~ ~1 ~ .3 .5 .3 1 40
playsound entity.axolotl.splash master @a ~ ~ ~ 2 0
playsound entity.generic.explode master @a ~ ~ ~ 2 2
kill @s