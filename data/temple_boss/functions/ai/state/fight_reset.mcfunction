execute as @e[tag=templeGate, type=minecraft:armor_stand, sort=nearest, limit=4] at @s run fill ^-1 ^3 ^ ^1 ^1 ^ minecraft:air
function temple_boss:helper/kill_nearest_boss
tag @s remove activeFight
tag @s remove bossDefeated
bossbar remove temple_boss:bossbar1

kill @e[type=endermite, tag=templeBossMite, distance=..60]
kill @e[type=armor_stand, tag=templeBossBullet, distance=..60]
kill @e[type=armor_stand, tag=bossBulletPurple, distance=..60]
kill @e[type=skeleton, tag=templeBossSkeleton, distance=..60]
kill @e[type=skeleton, tag=templeBossSkeleton, distance=..60]