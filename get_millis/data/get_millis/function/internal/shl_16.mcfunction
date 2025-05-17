# a = a << 16
#
# the special case of mul where multiplier is 65536
#
#       |[a₃] [a₂]|[a₁] [a₀]
# *     |   0    0|   1    0
# --------------------------
#       |         |        0
#       |         |[a₀]
#       |         |   0
#       |        0|
#       |     [a₁]|
#       |        0|
#       |   0     |
#       |[a₂]     |
# +     |   0     |
# --------------------------
#       |[a₂] [a₁]|[a₀]    0

# a[31:16] = a.low >>> 16
scoreboard players operation #a[31:16] get_millis = #a[31:00] get_millis
scoreboard players operation #a[31:16] get_millis /= #65536 get_millis
execute if score #a[31:00] get_millis matches ..-1 run scoreboard players add #a[31:16] get_millis 65536

# a.low = a.low << 16
scoreboard players operation #a[31:00] get_millis *= #65536 get_millis

# a.high = a.high << 16
scoreboard players operation #a[63:32] get_millis *= #65536 get_millis

# a.high = a.high + a[31:16]
scoreboard players operation #a[63:32] get_millis += #a[31:16] get_millis
