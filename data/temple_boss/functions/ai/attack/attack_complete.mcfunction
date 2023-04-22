function temple_boss:set_variant/default
scoreboard players set @s isAttacking 0
function temple_boss:animations/animation.model.idle/play
data merge entity @e[type=cat, tag=templeBoss, limit=1,sort=nearest] {NoAI:0}