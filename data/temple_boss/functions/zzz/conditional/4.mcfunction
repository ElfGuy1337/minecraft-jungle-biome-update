#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
scoreboard players set # aj.i 0
execute if entity @s[tag=aj.temple_boss.anim.animation.model.test] run function temple_boss:zzz/execute/7
execute if entity @s[tag=aj.temple_boss.anim.animation.model.walk] run function temple_boss:zzz/execute/10
execute if entity @s[tag=aj.temple_boss.anim.animation.model.idle] run function temple_boss:zzz/execute/13
execute if entity @s[tag=aj.temple_boss.anim.animation.model.attack_1] run function temple_boss:zzz/execute/16
execute if entity @s[tag=aj.temple_boss.anim.animation.model.attack_2] run function temple_boss:zzz/execute/19
execute if entity @s[tag=aj.temple_boss.anim.animation.model.attack_3] run function temple_boss:zzz/execute/22
execute if entity @s[tag=aj.temple_boss.anim.animation.model.attack_4] run function temple_boss:zzz/execute/25
execute if entity @s[tag=aj.temple_boss.anim.animation.model.attack_5] run function temple_boss:zzz/execute/28
execute if score # aj.i matches 0 run function temple_boss:zzz/execute/31
scoreboard players set #execute aj.i 1