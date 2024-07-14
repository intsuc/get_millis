# get_millis

Calculates `(System.nanoTime() / 1000000L) & 0x0000ffffffffffff`.

## Usage

```mcfunction
# Initialize once.
function get_millis:init

# Get the millis. The execution position must be loaded to place the template.
execute positioned 0 0 0 run function get_millis:get_millis

# The result is split into high 32 bits (#millis[63:32] get_millis) and low 32 bits (#millis[31:00] get_millis).
tellraw @s [ \
  {"score": {"name": "#millis[63:32]", "objective": "get_millis"}}, \
  ", ", \
  {"score": {"name": "#millis[31:00]", "objective": "get_millis"}} \
]
```