#glue entities together
execute unless score @s isAgro matches 1 run execute at @e[type=cat, tag=templeBoss, sort=nearest, limit=1] run function temple_boss:move
execute unless score @s isAgro matches 1 run execute at @e[type=cat, tag=templeBoss, sort=nearest, limit=1] run tp @e[type=husk, tag=templeBoss, sort=nearest, limit=1] @s
execute if score @s isAgro matches 1 run execute at @e[type=husk, tag=templeBoss, sort=nearest, limit=1] run function temple_boss:move
execute if score @s isAgro matches 1 run execute at @e[type=husk, tag=templeBoss, sort=nearest, limit=1] run tp @e[type=cat, tag=templeBoss, sort=nearest, limit=1] @s

#boss logic executed while not attacking
execute unless score @s isAttacking matches 1 run function temple_boss:ai/passive

#boss logic executed while attacking
execute if score @s attackDelay matches 0 unless score @s isAttacking matches 1 run function temple_boss:ai/attack/attack_start

#projectile mite
execute as @e[type=endermite, tag=templeBossMite] at @s run function temple_boss:ai/attack/attack_1/temple_boss_mite

#projectile bullet green
execute as @e[type=armor_stand, tag=templeBossBullet] at @s run function temple_boss:ai/attack/attack_2/bullet_travel

#rising skeleton
execute as @e[type=skeleton, tag=risingSkeleton] at @s run function temple_boss:ai/attack/attack_3/skeleton_rise

#projectile bullet purple
execute as @e[type=armor_stand, tag=bossBulletPurple] at @s run function temple_boss:ai/attack/attack_5/bullet_travel

#bossbar
execute store result bossbar temple_boss:bossbar1 value run data get entity @e[type=minecraft:husk, tag=templeBoss, sort=nearest, limit=1] Health