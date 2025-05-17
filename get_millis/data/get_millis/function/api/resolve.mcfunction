# (a.high, a.low) = source
$data modify storage get_millis: wrapper[0] set from $(target)
$execute store result score #a[63:32] get_millis run data get $(target) 0.00000000023283064365386963
$execute store result score #temp0 get_millis run data get $(target) -0.00000000023283064365386963
function get_millis:internal/split

# seed = a
scoreboard players operation #seed[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #seed[31:00] get_millis = #a[31:00] get_millis

# restore seed.high
execute if score #seed[31:00] get_millis matches ..-1 run scoreboard players add #seed[63:32] get_millis 1

# a = seed.high * 0x00000005_deece66d
scoreboard players set #a[63:32] get_millis 0
scoreboard players operation #a[31:00] get_millis = #seed[63:32] get_millis
scoreboard players set #b[63:32] get_millis 5
scoreboard players set #b[31:00] get_millis -554899859
function get_millis:internal/mul

# a = seed.low - a
scoreboard players operation #b[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players set #a[63:32] get_millis 0
scoreboard players operation #a[31:00] get_millis = #seed[31:00] get_millis
function get_millis:internal/sub

# a = a << 16
function get_millis:internal/shl_16

# a = a - 0xb
execute if score #a[31:00] get_millis matches 0..10 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 11

# a = a & 0x0000ffff_ffffffff
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:32] get_millis 65536

# c = a
scoreboard players operation #c[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #c[31:00] get_millis = #a[31:00] get_millis

# a = 0x00010005_deece66d - c
scoreboard players set #a[63:32] get_millis 65541
scoreboard players set #a[31:00] get_millis -554899859
scoreboard players operation #b[63:32] get_millis = #c[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #c[31:00] get_millis
function get_millis:internal/sub

# d = a
scoreboard players operation #d[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #d[31:00] get_millis = #a[31:00] get_millis

# a = a % 0x0005_deece66d = ((((a.high + 1) as double) * (((1 << 32) as double) / (0x0005_deece66d as double))) as int) * 0x0005_deece66d
execute store result storage get_millis: quotient int 0.1703344700474672 run scoreboard players add #a[63:32] get_millis 1
execute store result score #a[31:00] get_millis run data get storage get_millis: quotient 1
scoreboard players set #a[63:32] get_millis 0
scoreboard players set #b[63:32] get_millis 5
scoreboard players set #b[31:00] get_millis -554899859
function get_millis:internal/mul

# a = a - d
scoreboard players operation #b[63:32] get_millis = #a[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players operation #a[63:32] get_millis = #d[63:32] get_millis
scoreboard players operation #a[31:00] get_millis = #d[31:00] get_millis
function get_millis:internal/sub

# a = solve(a)
function get_millis:internal/solve

# a = c + a.low
scoreboard players set #b[63:32] get_millis 0
scoreboard players operation #b[31:00] get_millis = #a[31:00] get_millis
scoreboard players operation #a[63:32] get_millis = #c[63:32] get_millis
scoreboard players operation #a[31:00] get_millis = #c[31:00] get_millis
function get_millis:internal/add

# a = a * 0x0000dfe0_5bcb1365
scoreboard players set #b[63:32] get_millis 57312
scoreboard players set #b[31:00] get_millis 1540035429
function get_millis:internal/mul

# a = a & 0x0000ffff_ffffffff
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
function get_millis:internal/shl_16

# a = a + d
scoreboard players operation #b[63:32] get_millis = #d[63:32] get_millis
scoreboard players operation #b[31:00] get_millis = #d[31:00] get_millis
function get_millis:internal/add

# a = a - 0xb
execute if score #a[31:00] get_millis matches 0..10 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 11

# a = a * 0x0000dfe0_5bcb1365
scoreboard players set #b[63:32] get_millis 57312
scoreboard players set #b[31:00] get_millis 1540035429
function get_millis:internal/mul

# a = a ^ 0x00000005_deece66d
function get_millis:internal/unscramble

# a = a & 0x0000ffff_ffffffff
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:32] get_millis 65536

# millis = a
scoreboard players operation #millis.high get_millis = #a[63:32] get_millis
return run scoreboard players operation #millis.low get_millis = #a[31:00] get_millis
