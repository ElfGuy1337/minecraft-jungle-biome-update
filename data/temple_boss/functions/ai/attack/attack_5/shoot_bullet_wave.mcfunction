execute as @a[distance=..40] at @s run playsound entity.generic.explode master @a[distance=..40] ~ ~ ~ 1 1.5
particle flash ~ ~ ~
summon armor_stand ^ ^ ^ {Tags:[bossBulletPurple], Marker:1, Invisible:1, Invulnerable:1, Rotation:[0.0f, 0.0f, 0.0f], DisabledSlots:2039583, ArmorItems:[{id:diamond_boots,Count:0},{id:diamond_leggings,Count:0},{id:iron_chestplate,Count:0},{id:"carrot_on_a_stick",Count:1,tag:{CustomModelData:9302}}]}
tp @e[type=armor_stand, tag=bossBulletPurple, sort=nearest, limit=1] ~ ~ ~ facing entity @p[gamemode=survival]