#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#temple_boss:bone_entities,tag=aj.temple_boss.bone,distance=..10.613] if score @s aj.id = .this aj.id run function temple_boss:animations/animation.model.attack_5/tree/trunk
execute if score .noScripts aj.i matches 0 run function temple_boss:animations/animation.model.attack_5/zzz/execute/82
scoreboard players operation @s aj.frame += .aj.temple_boss.framerate aj.i
scoreboard players set .aj.animation aj.temple_boss.animating 1
execute unless score @s aj.frame matches 0..41 run function temple_boss:animations/animation.model.attack_5/edge