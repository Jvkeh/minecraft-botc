execute as @a if score @s id = @s vc run tag @s add in_house
clear @a[tag=in_house] minecraft:compass
tag @a remove in_house

execute if entity @a[tag=!storyteller,tag=!spectator,scores={vc=0}] run title @a[tag=storyteller] actionbar [{"selector": "@a[tag=!storyteller,tag=!spectator,scores={vc=0}]"},{"text":" is not in a house.","color":"red"}]
# execute unless entity @a[tag=!storyteller,tag=!spectator] unless entity @a[tag=requesting_chat] run title @a[tag=storyteller] actionbar [{"text":"All players are in a house.","color":"green"}]
execute store result score growl game_data run random value 0..3000
execute if score growl game_data matches 1 if score current_day game_data matches 2.. as @r[tag=!storyteller,tag=!spectator] at @s run playsound ct:clocktower.night.ambient voice @a ~ ~ ~10

execute as @a[scores={reveal_cd=139},tag=!spectator,tag=!storyteller] if score @s vc = @s id run function ct:start_game/roles/youare
execute as @a[tag=!spectator,tag=!storyteller,scores={reveal_cd=1..}] if score @s vc = @s id run scoreboard players remove @s reveal_cd 1
execute as @a[scores={reveal_cd=60}] run function ct:start_game/roles/announce
tellraw @s[tag=!storyteller,tag=!spectator,scores={reveal_cd=1}] [{"text":"! ","color":"yellow","bold":true},{"text":"Press T to release your mouse, then hover over your character icon in the top left to see your ability.","color":"gray","bold":false}]
execute as @a at @s run function ct:loop/player/night
function ct:util/timer/end

## Window/Door Particles
# Red
particle minecraft:dust{scale:4,color:0} 9168.5 72.0 5018.5 0.3 0.5 0 1 3 normal @a[scores={vc=1},team=01_red]

# Orange
particle minecraft:dust{scale:4,color:0} 9177.5 72.0 5027.5 0.3 0.5 0 1 3 normal @a[scores={vc=2},team=02_orange]
particle minecraft:dust{scale:4,color:0} 9177.5 77.5 5026.0 0.3 0.5 0 1 1 normal @a[scores={vc=2},team=02_orange]

# Yellow
particle minecraft:dust{scale:4,color:0} 9191.5 77.0 5009.5 0.3 0.5 0 1 3 normal @a[scores={vc=3},team=03_yellow]

# Lime
particle minecraft:dust{scale:4,color:0} 9192.0 73.0 5038.5 0 0.5 0.3 1 3 normal @a[scores={vc=4},team=04_lime]
particle minecraft:dust{scale:4,color:0} 9192.5 73.0 5039.0 0.3 0.5 0 1 3 normal @a[scores={vc=4},team=04_lime]

# Green
particle minecraft:dust{scale:4,color:0} 9214.5 77.0 5032.5 0 0.5 0.3 1 3 normal @a[scores={vc=5},team=05_green]
particle minecraft:dust{scale:4,color:0} 9216.0 82.5 5032.50 0 0.3 0.3 1 1 normal @a[scores={vc=5},team=05_green]

# Cyan
particle minecraft:dust{scale:4,color:0} 9204.5 73.5 5049.5 0 0.75 0.5 1 3 normal @a[scores={vc=6},team=06_cyan]

# Light Blue
particle minecraft:dust{scale:4,color:0} 9224.5 76.0 5054.5 0 0.5 0.3 1 3 normal @a[scores={vc=7},team=07_light_blue]

# Blue
particle minecraft:dust{scale:4,color:0} 9200.5 72.0 5060.5 0.5 0.5 0 1 3 normal @a[scores={vc=8},team=08_blue]

# Purple
particle minecraft:dust{scale:4,color:0} 9169.5 72.0 5075.5 0.3 0.5 0 1 3 normal @a[scores={vc=9},team=09_purple]
particle minecraft:dust{scale:4,color:0} 9169.5 77.5 5077.0 0.3 0.5 0 1 1 normal @a[scores={vc=9},team=09_purple]

# Magenta
particle minecraft:dust{scale:4,color:0} 9159.5 69.0 5096.5 0.3 0.5 0.3 1 3 normal @a[scores={vc=10},team=10_magenta]

# Pink
particle minecraft:dust{scale:4,color:0} 9145.5 69.0 5092.5 0 0.5 0.3 1 3 normal @a[scores={vc=11},team=11_pink]

# Light Gray
particle minecraft:dust{scale:4,color:0} 9147.5 69.0 5073.5 0.3 0.5 0 1 3 normal @a[scores={vc=12},team=12_light_gray]

# Gray
particle minecraft:dust{scale:4,color:0} 9136.5 69.5 5082.5 0.3 0.75 0 1 3 normal @a[scores={vc=13},team=13_gray]

# Brown
particle minecraft:dust{scale:4,color:0} 9130.0 70 5074.5 0 0.5 0.5 1 3 normal @a[scores={vc=14},team=14_brown]
particle minecraft:dust{scale:4,color:0} 9129.5 70 5074.0 0.3 0.5 0 1 3 normal @a[scores={vc=14},team=14_brown]

# Black
particle minecraft:dust{scale:4,color:0} 9131.5 71.5 5062.5 0 0.75 0.3 1 3 normal @a[scores={vc=15},team=15_black]