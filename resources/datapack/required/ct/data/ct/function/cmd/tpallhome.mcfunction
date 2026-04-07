execute if score phase game_data matches 0 run return run tellraw @s [{"text":"! ","color":"red","bold":true},{"text":"This command can only be run during a game.","color":"gray","bold":false}]

tellraw @s [{"text":"! ","color":"yellow","bold":true},{"text":"All players were teleported to their homes.","color":"gray","bold":false}]

tellraw @a[tag=!spectator,tag=!storyteller,tag=!in_house] [{"text":"! ","color":"yellow","bold":true},{"text":"A mysterious force teleported you home.","color":"gray","bold":false}]

tp @a[team=01_red,tag=!in_house] 77.5 76 108.0 -90 0
tp @a[team=02_orange,tag=!in_house] 70.0 76 122.5 0 0
tp @a[team=03_yellow,tag=!in_house] 55.5 76 112.0 90 0
tp @a[team=04_lime,tag=!in_house] 100.5 73 34.5 180 0
tp @a[team=05_green,tag=!in_house] 101.5 81 15.0 90 0
tp @a[team=06_mint,tag=!in_house] 130.5 87 1.5 90 0
tp @a[team=07_cyan,tag=!in_house] 143.0 82 6.5 -180 0
tp @a[team=08_blue,tag=!in_house] 178.5 73 23.5 -180 0
tp @a[team=09_navy,tag=!in_house] 194.5 77 42.5 -90 0
tp @a[team=10_purple,tag=!in_house] 200.5 79 61.5 -35 0
tp @a[team=11_magenta,tag=!in_house] 177.5 73 74.5 0 0
tp @a[team=12_lavender,tag=!in_house] 197.5 79 83.5 -90 0
tp @a[team=13_white,tag=!in_house] 179.5 73.0625 110.5 -90 0
tp @a[team=14_gray,tag=!in_house] 181.5 79 137.5 -90 0
tp @a[team=15_black,tag=!in_house] 156.5 76 140.5 0 0