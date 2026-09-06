## non-predicate adding to cave is a temporary measure
execute at @s if block ~ -64 ~ minecraft:oak_planks if entity @s[y=77, dy=-15] run return run function ct:voicechat/town/cave

# actual leave management:
execute if score phase game_data matches 4 if entity @s[tag=universal_vc] run return fail
execute if score @s vc matches 0 run voicechat leave
execute unless score @s vc matches 0 run scoreboard players set @s vc 0
tag @s remove in_vc