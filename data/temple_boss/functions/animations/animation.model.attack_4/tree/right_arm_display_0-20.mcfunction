#Project generated by Animated Java (https://animated-java.dev/)

execute if score .this aj.frame matches 0..7 run function temple_boss:animations/animation.model.attack_4/tree/right_arm_display_0-7
execute if score .this aj.frame matches 8..15 run function temple_boss:animations/animation.model.attack_4/tree/right_arm_display_8-15
execute if score .this aj.frame matches 20 run data modify entity @s Pose.Head set value [0f,-90f,45f]