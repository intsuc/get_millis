scoreboard players operation #a[63:32] get_millis += #b[63:32] get_millis
scoreboard players operation #a[31:00] get_millis += #b[31:00] get_millis

# check overflow
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis
scoreboard players operation #b[31:00] get_millis += #-2147483648 get_millis
execute if score #a[31:00] get_millis < #b[31:00] get_millis run scoreboard players add #a[63:32] get_millis 1
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis
scoreboard players operation #b[31:00] get_millis += #-2147483648 get_millis
