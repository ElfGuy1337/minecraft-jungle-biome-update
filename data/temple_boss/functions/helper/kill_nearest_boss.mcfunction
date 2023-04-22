execute as @e[tag=aj.temple_boss.root, sort=nearest, limit=1] at @s run function temple_boss:remove/this
execute as @e[type=husk, tag=templeBoss, limit=1, sort=nearest] at @s run kill @s
execute as @e[type=cat, tag=templeBoss, limit=1, sort=nearest] at @s run kill @s