execute if data storage get_millis: {version: "1.0.0"} run return 0

execute in get_millis:empty run forceload add 264 264

scoreboard objectives add get_millis dummy
scoreboard players set #-2147483648 get_millis -2147483648
scoreboard players set #4 get_millis 4
scoreboard players set #8 get_millis 8
scoreboard players set #65536 get_millis 65536
scoreboard players set #536870912 get_millis 536870912

data modify storage get_millis: wrapper set value [I;0]
data modify storage get_millis: target set value "storage get_millis: source"
data modify storage get_millis: op set value "set"
data modify storage get_millis: version set value "1.0.0"
