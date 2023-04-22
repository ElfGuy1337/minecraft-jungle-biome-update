#used to manage idle / walking animations
scoreboard objectives add walkingSpeed dummy
scoreboard objectives add walkingSpeedX dummy
scoreboard objectives add walkingSpeedZ dummy

#how long until the next attack
scoreboard objectives add attackDelay dummy

#stops walk logic if attacking
scoreboard objectives add isAttacking dummy

#how many ticks the boss will be forced to face the player
scoreboard objectives add facePlayer dummy

#detect boss state... used to handle change events
scoreboard objectives add previousState dummy
#state list
#0 = idle
#1 = walk

#shootfacing position
scoreboard objectives add pos dummy

#fish age
scoreboard objectives add dt dummy

#determines if the boss is running at the player
scoreboard objectives add isAgro dummy

#rng
scoreboard objectives add RNG_Constant dummy
scoreboard objectives add RNG_Variable dummy

#alternates voice lines so you don't get the same thing twice
scoreboard objectives add voiceSwitch dummy


function temple_boss:install
say Whimzee's Better Dungeon Temple Loaded