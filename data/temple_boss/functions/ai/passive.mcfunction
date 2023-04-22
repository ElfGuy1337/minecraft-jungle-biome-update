#boss logic executed while not attacking

#detect if boss is walking and switch between idle and walking animation
execute store result score @s walkingSpeedX run data get entity @e[type=cat, tag=templeBoss, sort=nearest, limit=1] Motion[0] 100
execute store result score @s walkingSpeedZ run data get entity @e[type=cat, tag=templeBoss, sort=nearest, limit=1] Motion[2] 100
scoreboard players set @s walkingSpeed 0
scoreboard players operation @s walkingSpeed += @s walkingSpeedX
scoreboard players operation @s walkingSpeed += @s walkingSpeedZ
execute unless score @s previousState matches 0 if score @s walkingSpeed matches -2..2 run function temple_boss:ai/idle
execute unless score @s previousState matches 1 unless score @s walkingSpeed matches -2..2 run function temple_boss:ai/walk

#prevent boss from running too far away
execute as @e[type=cat, tag=templeBoss, sort=nearest, limit=1] at @s run effect clear @s slowness 
execute as @e[type=cat, tag=templeBoss, sort=nearest, limit=1] at @s run execute if entity @p[distance=10..] run effect give @s slowness 999999 5 true

#face nearest player
execute if score @s facePlayer matches 1.. as @e[type=cat, tag=templeBoss, sort=nearest, limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=survival] eyes
execute if score @s facePlayer matches 1.. run scoreboard players remove @s facePlayer 1
execute if score @s facePlayer matches 1.. run data modify entity @e[type=cat, tag=templeBoss, sort=nearest, limit=1] NoAI set value 1
execute if score @s facePlayer matches 0 run data modify entity @e[type=cat, tag=templeBoss, sort=nearest, limit=1] NoAI set value 0

#attack cycle
execute if score @s attackDelay matches ..0 run scoreboard players set @s attackDelay 30
scoreboard players remove @s attackDelay 1