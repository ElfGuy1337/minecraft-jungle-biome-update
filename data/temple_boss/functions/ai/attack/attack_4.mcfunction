execute if score @s voiceSwitch matches 0 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_9a master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 1 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_10 master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 2 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_10a master @a[distance=..40] ~ ~ ~ 2 1.2
execute if score @s voiceSwitch matches 3 as @a[distance=..40] at @s run playsound minecraft:temple_boss.file_10b master @a[distance=..40] ~ ~ ~ 2 1.2
function temple_boss:animations/animation.model.attack_4/play