scoreboard players operation #temp0 get_millis = #a[63:32] get_millis

# 00000000000000000000000000000101
#                              ^  
scoreboard players operation #temp0 get_millis *= #536870912 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[63:32] get_millis 4
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[63:32] get_millis 4

# 00000000000000000000000000000101
#                                ^
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[63:32] get_millis 1
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[63:32] get_millis 1
scoreboard players operation #temp0 get_millis = #a[31:00] get_millis

# 11011110111011001110011001101101
# ^                               
scoreboard players operation #a[31:00] get_millis += #-2147483648 get_millis

# 11011110111011001110011001101101
#  ^                              
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 1073741824
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 1073741824

# 11011110111011001110011001101101
#    ^                            
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 268435456
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 268435456

# 11011110111011001110011001101101
#     ^                           
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 134217728
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 134217728

# 11011110111011001110011001101101
#      ^                          
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 67108864
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 67108864

# 11011110111011001110011001101101
#       ^                         
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 33554432
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 33554432

# 11011110111011001110011001101101
#         ^                       
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 8388608
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 8388608

# 11011110111011001110011001101101
#          ^                      
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 4194304
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 4194304

# 11011110111011001110011001101101
#           ^                     
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 2097152
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 2097152

# 11011110111011001110011001101101
#             ^                   
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 524288
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 524288

# 11011110111011001110011001101101
#              ^                  
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 262144
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 262144

# 11011110111011001110011001101101
#                 ^               
scoreboard players operation #temp0 get_millis *= #8 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 32768
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 32768

# 11011110111011001110011001101101
#                  ^              
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 16384
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 16384

# 11011110111011001110011001101101
#                   ^             
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 8192
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 8192

# 11011110111011001110011001101101
#                      ^          
scoreboard players operation #temp0 get_millis *= #8 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 1024
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 1024

# 11011110111011001110011001101101
#                       ^         
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 512
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 512

# 11011110111011001110011001101101
#                          ^      
scoreboard players operation #temp0 get_millis *= #8 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 64
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 64

# 11011110111011001110011001101101
#                           ^     
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 32
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 32

# 11011110111011001110011001101101
#                             ^   
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 8
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 8

# 11011110111011001110011001101101
#                              ^  
scoreboard players operation #temp0 get_millis += #temp0 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 4
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 4

# 11011110111011001110011001101101
#                                ^
scoreboard players operation #temp0 get_millis *= #4 get_millis
execute if score #temp0 get_millis matches 0.. run scoreboard players add #a[31:00] get_millis 1
execute if score #temp0 get_millis matches ..-1 run scoreboard players remove #a[31:00] get_millis 1
