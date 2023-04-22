#RNG for attack selection
scoreboard players set C_10 RNG_Constant 10
scoreboard players set C_314159 RNG_Constant 314159
scoreboard players set C_2718281 RNG_Constant 2718281

scoreboard players set RNGseed RNG_Variable 0

scoreboard players add RNGseed RNG_Variable 1
execute store result score RNG RNG_Variable run time query gametime
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNG RNG_Variable
scoreboard players operation RNG RNG_Variable /= C_10 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant

scoreboard players operation RNG RNG_Variable %= C_10 RNG_Constant

#stops all looping animations 
function temple_boss:animations/animation.model.walk/stop
function temple_boss:animations/animation.model.idle/stop
scoreboard players set @s isAttacking 1

#stops boss motion and faces nearest player
execute as @e[type=cat, tag=templeBoss, sort=nearest, limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=survival] eyes
data merge entity @e[type=cat, tag=templeBoss, limit=1,sort=nearest] {NoAI:1}

#alternates voice lines before each attack
scoreboard players add @s voiceSwitch 1
execute if score @s voiceSwitch matches 4.. run scoreboard players set @s voiceSwitch 0

#selects which attacks to use
execute if score RNG RNG_Variable matches 0..1 run function temple_boss:ai/attack/attack_1
execute if score RNG RNG_Variable matches 2..3 run function temple_boss:ai/attack/attack_2
execute if score RNG RNG_Variable matches 4 run function temple_boss:ai/attack/attack_3
execute if score RNG RNG_Variable matches 5..6 run function temple_boss:ai/attack/attack_4
execute if score RNG RNG_Variable matches 7..8 run function temple_boss:ai/attack/attack_5
execute if score RNG RNG_Variable matches 9 run function temple_boss:ai/attack/attack_6