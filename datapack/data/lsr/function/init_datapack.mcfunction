# 
# Data pack load function. Sets up teams, scoreboards and gamerules.
# 

#tellraw @a "Reloaded data pack."
#tellraw @a[tag=op] [{"text":"","color":"white"},"If you want to run setup, click ",{"text":"here","color":"blue","clickEvent":{"action":"suggest_command","value":"/function lsr:setup"}},". "]

scoreboard objectives add lsr.io dummy
scoreboard objectives add lsr.config dummy

scoreboard objectives add lsr.play trigger
scoreboard objectives add lsr.spectate trigger

scoreboard objectives add lsr.menu trigger
scoreboard objectives add lsr.settings trigger

scoreboard objectives add lsr.start_game trigger
scoreboard objectives add lsr.start_session trigger
scoreboard objectives add lsr.choose_boogeyman trigger
scoreboard objectives add lsr.end_game trigger

scoreboard objectives add lsr.death deathCount
scoreboard objectives add lsr.kill playerKillCount

team add lsr.red
team modify lsr.red color red
team add lsr.yellow
team modify lsr.yellow color yellow
team add lsr.green
team modify lsr.green color green
#team add lsr.spectators
#team modify lsr.spectators color gray

gamerule commandBlockOutput false
gamerule sendCommandFeedback false

execute unless score $config_loaded lsr.config matches 1 run function lsr:settings/reset_game_config