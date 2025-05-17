# (a.high, a.low) = source

execute store result score #a[31:00] get_millis run data get storage get_millis: wrapper[0] 1

execute store result score #a[63:32] get_millis run data get storage get_millis: source 0.00000000023283064365386963
execute store result score #temp0 get_millis run data get storage get_millis: source -0.00000000023283064365386963

scoreboard players operation #temp1 get_millis = #a[63:32] get_millis
scoreboard players operation #temp1 get_millis > #temp0 get_millis

execute if score #a[31:00] get_millis matches 0.. run return 0
execute if score #temp1 get_millis matches 0..2097151 run return 0
execute if score #a[31:00] get_millis matches -512.. if score #temp1 get_millis matches 1073741824..2147483646 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -256.. if score #temp1 get_millis matches 536870912..1073741823 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -128.. if score #temp1 get_millis matches 268435456..536870911 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -64.. if score #temp1 get_millis matches 134217728..268435455 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -32.. if score #temp1 get_millis matches 67108864..134217727 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -16.. if score #temp1 get_millis matches 33554432..67108863 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -8.. if score #temp1 get_millis matches 16777216..33554431 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -4.. if score #temp1 get_millis matches 8388608..16777215 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -2.. if score #temp1 get_millis matches 4194304..8388607 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #a[31:00] get_millis matches -1.. if score #temp1 get_millis matches 2097152..4194303 run return run scoreboard players remove #a[63:32] get_millis 1
execute if score #temp1 get_millis matches 2147483647.. if score #a[31:00] get_millis matches -512.. if score #temp0 get_millis matches -2147483647.. run scoreboard players remove #a[63:32] get_millis 1
