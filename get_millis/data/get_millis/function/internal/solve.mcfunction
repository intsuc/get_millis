# if a fits within the range of unsigned 16-bit integer (0 <= a && a <= 65535), solved

# 1st attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# 2nd attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# 3rd attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# 4th attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# 5th attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# 6th attempt
execute if score #a[63:32] get_millis matches 0 if score #a[31:00] get_millis matches 0..65535 run return 0

# a = a - 0x3bdc2d01
execute if score #a[31:00] get_millis matches 0..1004285184 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players remove #a[31:00] get_millis 1004285185

# no 7th attempt, solved
