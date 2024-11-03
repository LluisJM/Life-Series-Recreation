# 
# Prints the main menu.
# 

function lsr:menu/print_separator

function lsr:menu/print_title {title:"Main Menu"}

execute unless score $game_state lsr.io matches 1..2 run function lsr:menu/print_button {text:"Start game", command:"trigger lsr.start_game"}
execute if score $game_state lsr.io matches 1 run function lsr:menu/print_button {text:"Start session", command:"trigger lsr.start_session"}
execute if score $game_state lsr.io matches 2 run function lsr:menu/print_button {text:"Choose boogeyman", command:"trigger lsr.choose_boogeyman"}

function lsr:menu/print_button {text:"Settings", command:"trigger lsr.settings"}

tellraw @s " "

execute if score $game_state lsr.io matches 1..2 run function lsr:menu/print_button {text:"Stop game", command:"trigger lsr.end_game"}
execute unless score $game_state lsr.io matches 1..2 run tellraw @s " "

tellraw @s " "