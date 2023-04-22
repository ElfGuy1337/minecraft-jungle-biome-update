scoreboard players set C_5 RNG_Constant 5
scoreboard players set C_314159 RNG_Constant 314159
scoreboard players set C_2718281 RNG_Constant 2718281

scoreboard players operation RNG RNG_Variable += C_5 RNG_Constant

scoreboard players add RNGseed RNG_Variable 1
execute store result score RNG RNG_Variable run time query gametime
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNG RNG_Variable
scoreboard players operation RNG RNG_Variable /= C_5 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant

scoreboard players operation RNG RNG_Variable %= C_5 RNG_Constant

# summon the temporary entity
execute if score RNG RNG_Variable matches 0 run summon marker ^-1 ^-5 ^3 {Tags:["direction"]}
execute if score RNG RNG_Variable matches 1 run summon marker ^1 ^-5 ^3 {Tags:["direction"]}
execute if score RNG RNG_Variable matches 2 run summon marker ^ ^-5 ^3 {Tags:["direction"]}
execute if score RNG RNG_Variable matches 3 run summon marker ^-.5 ^-5 ^3 {Tags:["direction"]}
execute if score RNG RNG_Variable matches 4 run summon marker ^.5 ^-5 ^3 {Tags:["direction"]}


# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the projectile entity
summon endermite ~ ~ ~ {Tags:["projectile", "templeBossMite"]}
summon endermite ~ ~ ~ {Tags:["projectile", "templeBossMite"]}
summon endermite ~ ~ ~ {Tags:["projectile", "templeBossMite"]}


# apply motion to projectile
execute store result entity @e[type=endermite,tag=projectile,limit=1] Motion[0] double 0.001 run scoreboard players get #targetX pos
execute store result entity @e[type=endermite,tag=projectile,limit=1] Motion[1] double 0.001 run scoreboard players get #targetY pos
execute store result entity @e[type=endermite,tag=projectile,limit=1] Motion[2] double 0.001 run scoreboard players get #targetZ pos

# clean up, ready for the next player
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]