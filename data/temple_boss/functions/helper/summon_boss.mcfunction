function temple_boss:summon/default
summon cat ~ ~ ~ {Tags:[templeBoss], Invulnerable:1,PersistenceRequired:1,Silent:1,ActiveEffects:[{Id:2,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:0,Duration:999999, ShowParticles:0b}]}
summon husk ~ ~ ~ {Tags:[templeBoss], PersistenceRequired:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}], Health:400,Attributes:[{Name:"generic.max_health",Base:400}]}
team add templeBossTeam
team join templeBossTeam @e[tag=templeBoss]
team modify templeBossTeam collisionRule never

bossbar add temple_boss:bossbar1 {"selector":"@e[type=minecraft:husk, tag=templeBoss, sort=nearest, limit=1]"}
bossbar set temple_boss:bossbar1 players @a[distance=..100]
bossbar set temple_boss:bossbar1 color green
bossbar set temple_boss:bossbar1 style notched_20
bossbar set temple_boss:bossbar1 name {"text":"Sizin the Stinking One", "color":"green"}

execute store result bossbar temple_boss:bossbar1 max run attribute @e[type=husk, tag=templeBoss, sort=nearest, limit=1] generic.max_health get
execute unless entity @e[type=husk, tag=templeBoss, sort=nearest, limit=1, distance=..5] run execute as @e[type=armor_stand, tag=templeBossSpawn, tag=activeFight, sort=nearest, limit=1] at @s run function temple_boss:ai/state/fight_reset