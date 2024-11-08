# 
# Displays the "You are..." text before the boogeyman windup.
# 

title @a times 0.2s 4s 1s
title @a title { \
    "translate": "lsr.boogeyman.choose.windup", \
    "fallback":"You are...", \
    "color":"yellow" \
}
execute as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 2 0.7

schedule function lsr:boogeyman/choose 4s replace