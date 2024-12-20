# 
# Removes a life from self.
# 

execute as @s[team=lsr.red] run title @s title { \
    "translate": "lsr.misc.eliminated.title", \
    "fallback":"You have been eliminated", \
    "color":"gray" \
}
execute as @s[team=lsr.red] run function lsr:util/player_spectate

execute as @s[team=lsr.yellow] run tag @s remove lsr.boogeyman
execute as @s[team=lsr.yellow] run tellraw @s { \
    "translate": "lsr.misc.last_life.p1", \
    "fallback": "You have dropped to your %s. All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish.", \
    "color":"gray", \
    "with": [ \
        { \
            "translate": "lsr.misc.last_life.p2", \
            "fallback": "Last Life", \
            "color": "red" \
        } \
    ] \
}
execute as @s[team=lsr.yellow] run team join lsr.red @s

execute as @s[team=lsr.green] run team join lsr.yellow @s

execute as @s[predicate=lsr:is_green_or_yellow] run scoreboard players remove $count.green_and_yellow.max lsr.io 1