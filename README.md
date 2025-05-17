# get_millis

> [!CAUTION]
> This data pack is highly dependent on the internal implementation details of Minecraft and may not work in future versions.

Calculates the current value of the JVM's high-resolution time source in milliseconds (`(System.nanoTime() / 1000000L) & 0x0000ffffffffffff`).

## Basic usage

```mcfunction
scoreboard objectives add example dummy

execute store result score #start example run function get_millis:api/get_and_resolve
  reload
  reload
  reload
execute store result score #end example run function get_millis:api/get_and_resolve

scoreboard players operation #end example -= #start example
tellraw @a ["Elapsed time: ", {score: {name: "#end", objective: "example"}, color: "gold"}, " ms"]
```

## Advanced usage

```mcfunction
scoreboard objectives add example dummy

data modify storage example: times set value []
function get_millis:api/get {target: "storage example: times", op: "append"}
  reload
function get_millis:api/get {target: "storage example: times", op: "append"}
  reload
function get_millis:api/get {target: "storage example: times", op: "append"}
  reload
function get_millis:api/get {target: "storage example: times", op: "append"}

execute store result score #1 example run function get_millis:api/resolve {target: "storage example: times[0]"}
execute store result score #2 example run function get_millis:api/resolve {target: "storage example: times[1]"}
execute store result score #3 example run function get_millis:api/resolve {target: "storage example: times[2]"}
execute store result score #4 example run function get_millis:api/resolve {target: "storage example: times[3]"}

scoreboard players operation #4 example -= #3 example
scoreboard players operation #3 example -= #2 example
scoreboard players operation #2 example -= #1 example

tellraw @a [ \
  "Times: \n", \
  "1: ", {score: {name: "#2", objective: "example"}, color: "gold"}, " ms\n", \
  "2: ", {score: {name: "#3", objective: "example"}, color: "gold"}, " ms\n", \
  "3: ", {score: {name: "#4", objective: "example"}, color: "gold"}, " ms\n", \
]
```
