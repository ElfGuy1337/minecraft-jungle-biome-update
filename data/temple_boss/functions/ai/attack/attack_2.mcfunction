execute if score @s voiceSwitch matches 0 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_5 master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 1 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_6 master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 2 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_5a master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 3 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_6a master @a[distance=..40] ~ ~ ~ 2 1.2
function temple_boss:animations/animation.model.attack_2/play