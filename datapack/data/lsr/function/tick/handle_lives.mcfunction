# 
# Handles lives for players. 
# 

execute as @a[scores={lsr.death=1..}] run function lsr:util/remove_life_from_player