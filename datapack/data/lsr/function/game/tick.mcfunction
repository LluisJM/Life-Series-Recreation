# 
# Runs every tick during the game. Deals with game mechanics.
# 

function lsr:tick/handle_lives
function lsr:tick/handle_boogeymen
execute if score $apply_kill_buffs.boogeyman lsr.config matches 1 run function lsr:tick/apply_kill_buff/boogeyman
execute if score $apply_kill_buffs.red lsr.config matches 1 run function lsr:tick/apply_kill_buff/red

scoreboard players reset @a lsr.death
scoreboard players reset @a lsr.kill

#execute as @e[type=armor_stand,tag=c_tnt] at @s run summon tnt ~ ~ ~ {Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt,Passengers:[{id:tnt}]}]}]}]}]}]}]}]}]}]}
#lsr.kill @e[type=armor_stand,tag=c_tnt]

schedule function lsr:game/tick 1t