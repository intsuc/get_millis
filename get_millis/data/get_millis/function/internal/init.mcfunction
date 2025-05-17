execute in get_millis:empty run forceload add 264 264

data modify storage get_millis: wrapper set value [I;0]

scoreboard objectives add get_millis dummy
scoreboard players set #-2147483648 get_millis -2147483648
scoreboard players set #4 get_millis 4
scoreboard players set #8 get_millis 8
scoreboard players set #65536 get_millis 65536
scoreboard players set #536870912 get_millis 536870912
