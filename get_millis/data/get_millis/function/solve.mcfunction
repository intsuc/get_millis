# 1st attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# 2nd attempt
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# 3rd attempt
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# 4th attempt
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# 5th attempt
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# 6th attempt
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# no 7th attempt, solved
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185
