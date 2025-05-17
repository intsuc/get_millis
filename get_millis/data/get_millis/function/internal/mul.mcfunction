# a = a * b
#
#       |[a₃] [a₂]|[a₁] [a₀]
# *     |   0 [b₂]|[b₁] [b₀]
# --------------------------
#       |         |[a₀ * b₀]
#       |     [a₀ * b₁]
#       |     [a₁ * b₀]
#       |[a₀ * b₂]|
#       |[a₁ * b₁]|
#       |[a₂ * b₀]|
#   [a₁ * b₂]     |
#   [a₂ * b₁]     |
# + [a₃ * b₀]     |
# --------------------------
#       |[   a    *    b   ]

scoreboard players operation #a[15:00] get_millis = #a[31:00] get_millis
scoreboard players operation #a[15:00] get_millis %= #65536 get_millis

scoreboard players operation #a[31:16] get_millis = #a[31:00] get_millis
scoreboard players operation #a[31:16] get_millis /= #65536 get_millis
execute if score #a[31:00] get_millis matches ..-1 run scoreboard players add #a[31:16] get_millis 65536

scoreboard players operation #a[47:32] get_millis = #a[63:32] get_millis
scoreboard players operation #a[47:32] get_millis %= #65536 get_millis

scoreboard players operation #a[63:48] get_millis = #a[63:32] get_millis
scoreboard players operation #a[63:48] get_millis /= #65536 get_millis
execute if score #a[63:32] get_millis matches ..-1 run scoreboard players add #a[63:48] get_millis 65536

scoreboard players operation #b[15:00] get_millis = #b[31:00] get_millis
scoreboard players operation #b[15:00] get_millis %= #65536 get_millis

scoreboard players operation #b[31:16] get_millis = #b[31:00] get_millis
scoreboard players operation #b[31:16] get_millis /= #65536 get_millis
execute if score #b[31:00] get_millis matches ..-1 run scoreboard players add #b[31:16] get_millis 65536

scoreboard players operation #b[47:32] get_millis = #b[63:32] get_millis
scoreboard players operation #b[47:32] get_millis %= #65536 get_millis

scoreboard players operation #a[15:00]*b[15:00] get_millis = #a[15:00] get_millis
scoreboard players operation #a[15:00]*b[15:00] get_millis *= #b[15:00] get_millis

scoreboard players operation #a[15:00]*b[31:16] get_millis = #a[15:00] get_millis
scoreboard players operation #a[15:00]*b[31:16] get_millis *= #b[31:16] get_millis

scoreboard players operation #a[15:00]*b[47:32] get_millis = #a[15:00] get_millis
scoreboard players operation #a[15:00]*b[47:32] get_millis *= #b[47:32] get_millis

scoreboard players operation #a[31:16]*b[15:00] get_millis = #a[31:16] get_millis
scoreboard players operation #a[31:16]*b[15:00] get_millis *= #b[15:00] get_millis

scoreboard players operation #a[31:16]*b[31:16] get_millis = #a[31:16] get_millis
scoreboard players operation #a[31:16]*b[31:16] get_millis *= #b[31:16] get_millis

scoreboard players operation #a[31:16]*b[47:32] get_millis = #a[31:16] get_millis
scoreboard players operation #a[31:16]*b[47:32] get_millis *= #b[47:32] get_millis

scoreboard players operation #a[47:32]*b[15:00] get_millis = #a[47:32] get_millis
scoreboard players operation #a[47:32]*b[15:00] get_millis *= #b[15:00] get_millis

scoreboard players operation #a[47:32]*b[31:16] get_millis = #a[47:32] get_millis
scoreboard players operation #a[47:32]*b[31:16] get_millis *= #b[31:16] get_millis

scoreboard players operation #a[63:48]*b[15:00] get_millis = #a[63:48] get_millis
scoreboard players operation #a[63:48]*b[15:00] get_millis *= #b[15:00] get_millis

scoreboard players operation #temp0 get_millis = #a[15:00]*b[31:16] get_millis
scoreboard players operation #temp0 get_millis /= #65536 get_millis
execute if score #a[15:00]*b[31:16] get_millis matches ..-1 run scoreboard players add #temp0 get_millis 65536
scoreboard players operation #a[63:32] get_millis = #temp0 get_millis

scoreboard players operation #temp0 get_millis = #a[31:16]*b[15:00] get_millis
scoreboard players operation #temp0 get_millis /= #65536 get_millis
execute if score #a[31:16]*b[15:00] get_millis matches ..-1 run scoreboard players add #temp0 get_millis 65536
scoreboard players operation #a[63:32] get_millis += #temp0 get_millis

scoreboard players operation #a[63:32] get_millis += #a[15:00]*b[47:32] get_millis

scoreboard players operation #a[63:32] get_millis += #a[31:16]*b[31:16] get_millis

scoreboard players operation #a[63:32] get_millis += #a[47:32]*b[15:00] get_millis

scoreboard players operation #a[31:16]*b[47:32] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis += #a[31:16]*b[47:32] get_millis

scoreboard players operation #a[47:32]*b[31:16] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis += #a[47:32]*b[31:16] get_millis

scoreboard players operation #a[63:48]*b[15:00] get_millis *= #65536 get_millis
scoreboard players operation #a[63:32] get_millis += #a[63:48]*b[15:00] get_millis

scoreboard players operation #a[31:00] get_millis = #a[15:00]*b[15:00] get_millis

scoreboard players operation #a[15:00]*b[31:16] get_millis *= #65536 get_millis
scoreboard players operation #a[31:00] get_millis += #a[15:00]*b[31:16] get_millis

# check overflow
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis
scoreboard players operation #a[15:00]*b[31:16] get_millis += #-2147483648 get_millis
execute if score #a[31:00] get_millis < #a[15:00]*b[31:16] get_millis run scoreboard players add #a[63:32] get_millis 1
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis

scoreboard players operation #a[31:16]*b[15:00] get_millis *= #65536 get_millis
scoreboard players operation #a[31:00] get_millis += #a[31:16]*b[15:00] get_millis

# check overflow
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis
scoreboard players operation #a[31:16]*b[15:00] get_millis += #-2147483648 get_millis
execute if score #a[31:00] get_millis < #a[31:16]*b[15:00] get_millis run scoreboard players add #a[63:32] get_millis 1
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis
