# 
# Basic on join player config.
# 

function lsr:menu/print_long_separator

tag @s remove lsr.player
tag @s remove lsr.spectator
scoreboard players enable @s lsr.play
scoreboard players enable @s lsr.spectate

function lsr:menu/print_heading_1 {title_id:"pack", title_text:"Life Series Recreation"}

function lsr:menu/print_button {button_id:"play_game", button_text:"Play game", command:"trigger lsr.play"}
function lsr:menu/print_button {button_id:"spectate_game", button_text:"Spectate game", command:"trigger lsr.spectate"}

function lsr:menu/print_separator

function lsr:menu/print_button {button_id:"operator_check", button_text:"Are you and operator?", command:"function lsr:util/check_operator_status"}

function lsr:menu/print_separator