# 
# Adds a life to self.
# 

execute as @s[tag=lsr.player,team=lsr.green] run tellraw @s {\
    "translate": "lsr.life.add.fail.max", \
    "fallback": "No lives can be added as you already have the maximum amount of them.", \
    "color": "red" \
}
execute as @s[tag=lsr.player,team=lsr.yellow] run tellraw @s {\
    "translate": "lsr.life.add.success", \
    "fallback": "You have been given life.", \
    "color": "green" \
}
execute as @s[tag=lsr.player,team=lsr.yellow] run team join lsr.green @s
execute as @s[tag=lsr.player,team=lsr.red] run tellraw @s {\
    "translate": "lsr.life.add.success", \
    "fallback": "You have been given life.", \
    "color": "green" \
}
execute as @s[tag=lsr.player,team=lsr.red] run team join lsr.yellow @s
execute as @s[tag=lsr.spectator] run team join lsr.red
execute as @s[tag=lsr.spectator] run tag @s remove lsr.spectator
