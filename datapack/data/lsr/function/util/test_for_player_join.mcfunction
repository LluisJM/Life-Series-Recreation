# 
# Tests for new players.
# 

execute as @a[tag=!lsr.has_joined] run function lsr:menu/player_config
return run tag @a[tag=!lsr.has_joined] add lsr.has_joined