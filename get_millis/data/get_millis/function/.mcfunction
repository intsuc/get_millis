# a = LootTableSeed
place template get_millis:randomizable_container
data modify storage get_millis: source set from block ~ ~ ~ LootTableSeed
function get_millis:split

# seed = a
scoreboard players operation #seed[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #seed[31:00] get_millis = #a[31:00] get_millis

# restore seed.high
execute if score #seed[31:00] get_millis matches ..-1 run scoreboard players add #seed[63:32] get_millis 1

# a = seed.high * 0x5_deec_e66d
scoreboard players set #a[63:32] get_millis 0
scoreboard players operation #a[31:00] get_millis = #seed[63:32] get_millis
scoreboard players set #b[63:32] get_millis 5
scoreboard players set #b[31:00] get_millis -554899859
function get_millis:mul

# a = seed.low - a
scoreboard players operation #b[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players set #a[63:32] get_millis 0
scoreboard players operation #a[31:00] get_millis = #seed[31:00] get_millis
function get_millis:sub

# a = a << 16
function get_millis:shl_16

# a = a - 0xb
execute if score #a[31:00] get_millis matches 0..10 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 11

# a = a & 0x0000_ffff_ffff_ffff
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:32] get_millis 65536

# c = a
scoreboard players operation #c[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #c[31:00] get_millis = #a[31:00] get_millis

# a = 0x5_deec_e66d - (c | 0xffff_0000_0000_0000)
scoreboard players set #a[63:32] get_millis 5
scoreboard players set #a[31:00] get_millis -554899859
scoreboard players operation #b[63:32] get_millis = #c[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #c[31:00] get_millis
scoreboard players remove #b[63:32] get_millis 65536
function get_millis:sub

# d = a
scoreboard players operation #d[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #d[31:00] get_millis = #a[31:00] get_millis

# a = a % 0x5_deec_e66d = ((a.high + 1) as double) * (((1 << 32) as double) / (0x5_deec_e66d as double)) as int
execute store result storage get_millis: quotient int 0.1703344700474672 run scoreboard players add #a[63:32] get_millis 1
execute store result score #a[31:00] get_millis run data get storage get_millis: quotient 1
scoreboard players set #a[63:32] get_millis 0
scoreboard players set #b[63:32] get_millis 5
scoreboard players set #b[31:00] get_millis -554899859
function get_millis:mul

# a = a - d
scoreboard players operation #b[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players operation #a[63:32] get_millis = #d[63:32] get_millis
scoreboard players operation #a[31:00] get_millis = #d[31:00] get_millis
function get_millis:sub

# a = solve(a)
function get_millis:solve

# a = c + a.low
scoreboard players set #b[63:32] get_millis 0
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players operation #a[63:32] get_millis = #c[63:32] get_millis
scoreboard players operation #a[31:00] get_millis = #c[31:00] get_millis
function get_millis:add

# a = a * 0xdfe0_5bcb_1365
scoreboard players set #b[63:32] get_millis 57312
scoreboard players set #b[31:00] get_millis 1540035429
function get_millis:mul

# a = a & 0x0000_ffff_ffff_ffff
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:32] get_millis 65536

# d = a
scoreboard players operation #d[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #d[31:00] get_millis = #a[31:00] get_millis

# a = seed.high
scoreboard players set #a[63:32] get_millis 0
scoreboard players operation #a[31:00] get_millis = #seed[63:32] get_millis

# a = a << 16
function get_millis:shl_16

# a = a + d
scoreboard players operation #b[63:32] get_millis = #d[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #d[31:00] get_millis
function get_millis:add

# a = a - 0xb
execute if score #a[31:00] get_millis matches 0..10 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 11

# a = a * 0xdfe0_5bcb_1365
scoreboard players set #b[63:32] get_millis 57312
scoreboard players set #b[31:00] get_millis 1540035429
function get_millis:mul

# a = a ^ 0x5_deec_e66d
function get_millis:unscramble_initial_seed

# a = a & 0x0000_ffff_ffff_ffff
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:32] get_millis 65536

# millis = a
scoreboard players operation #millis[63:32] get_millis = #a[63:32] get_millis
return run scoreboard players operation #millis[31:00] get_millis = #a[31:00] get_millis
