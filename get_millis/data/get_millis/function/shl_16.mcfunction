scoreboard players operation #a[31:16] get_millis = #a[31:00] get_millis
scoreboard players operation #a[31:16] get_millis /= #65536 get_millis
execute if score #a[31:00] get_millis matches ..-1 run scoreboard players add #a[31:16] get_millis 65536

scoreboard players operation #a[63:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis += #a[31:16] get_millis
scoreboard players operation #a[31:00] get_millis *= #65536 get_millis
