execute if entity @a[tag=!storyteller,tag=!in_house,tag=!spectator] run title @a[tag=storyteller] actionbar [{"selector": "@a[tag=!storyteller,tag=!in_house,tag=!spectator]"},{"text":" are not in a house.","color":"red"}]
execute unless entity @a[tag=!storyteller,tag=!in_house] unless entity @a[tag=requesting_chat] run title @a[tag=storyteller] actionbar [{"text":"All players are in a house.","color":"green"}]
execute store result score growl game_data run random value 0..3000
execute if score growl game_data matches 1 if score current_day game_data matches 2.. as @r[tag=!storyteller,tag=!spectator] at @s run playsound ct:clocktower.night.ambient voice @a ~ ~ ~10

## Window/Door Particles
# Red
particle minecraft:dust{scale:4,color:0} 76.95 77 108.0 0 0.6 0.6 1 5 normal @a[tag=in_house,team=01_red]

# Orange
particle minecraft:dust{scale:4,color:0} 70.0 77 121.95 0.6 0.6 0 1 5 normal @a[tag=in_house,team=02_orange]

# Yellow
particle minecraft:dust{scale:4,color:0} 56.05 77 112.0 0 0.6 0.6 1 5 normal @a[tag=in_house,team=03_yellow]

# Lime
particle minecraft:dust{scale:4,color:0} 100 74 35.05 0.3 0.6 0 1 5 normal @a[tag=in_house,team=04_lime]

# Green
particle minecraft:dust{scale:4,color:0} 102.5 82 15.0 0 0.6 0.6 1 5 normal @a[tag=in_house,team=05_green]

# Mint
particle minecraft:dust{scale:4,color:0} 131.5 88 1 0 0.6 0.3 1 5 normal @a[tag=in_house,team=06_mint]

# Cyan
particle minecraft:dust{scale:4,color:0} 143.0 83 7.5 0.6 0.6 0 1 5 normal @a[tag=in_house,team=07_cyan]

# Blue
particle minecraft:dust{scale:4,color:0} 178 74 24.05 0.3 0.6 0 1 5 normal @a[tag=in_house,team=08_blue]

# Navy
particle minecraft:dust{scale:4,color:0} 193.95 78 42 0 0.6 0.3 1 5 normal @a[tag=in_house,team=09_navy]

# Purple
particle minecraft:dust{scale:4,color:0} 199.95 80 61 0 1 0.8 1 10 normal @a[tag=in_house,team=10_purple]

# Magenta
particle minecraft:dust{scale:4,color:0} 176 74 72.95 0.3 0.6 0 1 5 normal @a[tag=in_house,team=11_magenta]
particle minecraft:dust{scale:4,color:0} 178 74 72.95 0.3 0.6 0 1 5 normal @a[tag=in_house,team=11_magenta]

# Lavender
particle minecraft:dust{scale:4,color:0} 196.95 80 83 0 0.6 0.3 1 5 normal @a[tag=in_house,team=12_lavender]

# White
particle minecraft:dust{scale:4,color:0} 178.5 74 110 0 0.6 0.3 1 5 normal @a[tag=in_house,team=13_white]

# Grey
particle minecraft:dust{scale:4,color:0} 180.9 80 137 0 0.6 0.3 1 5 normal @a[tag=in_house,team=14_gray]

# Black
particle minecraft:dust{scale:4,color:0} 156 77 139.9 0.3 0.6 0 1 5 normal @a[tag=in_house,team=15_black]