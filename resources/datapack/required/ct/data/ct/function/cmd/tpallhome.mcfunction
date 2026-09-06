execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

tellraw @s [{"text":"! ","color":"yellow","bold":true},{"text":"All players were teleported to their homes.","color":"gray","bold":false}]

execute as @a[tag=!spectator,tag=!storyteller] unless score @s vc = @s id run tellraw @s [{"text":"! ","color":"yellow","bold":true},{"text":"A mysterious force teleported you home.","color":"gray","bold":false}]

execute as @a[team=01_red] unless entity @s[scores={vc=1}] run tp @s 9168 71.00 5017 180 0
execute as @a[team=02_orange] unless entity @s[scores={vc=2}] run tp @s 9177 71.00 5026 180 0
execute as @a[team=03_yellow] unless entity @s[scores={vc=3}] run tp @s 9191 76.00 5008 180 0
execute as @a[team=04_lime] unless entity @s[scores={vc=4}] run tp @s 9192 72.00 5038 -135 0
execute as @a[team=05_green] unless entity @s[scores={vc=5}] run tp @s 9215 76.00 5032 -90 0
execute as @a[team=06_cyan] unless entity @s[scores={vc=6}] run tp @s 9206 72.00 5049 -90 0
execute as @a[team=07_light_blue] unless entity @s[scores={vc=7}] run tp @s 9226 75.00 5054 -90 0
execute as @a[team=08_blue] unless entity @s[scores={vc=8}] run tp @s 9200 71.00 5062 0 0
execute as @a[team=09_purple] unless entity @s[scores={vc=9}] run tp @s 9169 71.00 5076 0 0
execute as @a[team=10_magenta] unless entity @s[scores={vc=10}] run tp @s 9158 68.00 5097 45 0
execute as @a[team=11_pink] unless entity @s[scores={vc=11}] run tp @s 9144 68.00 5092 90 0
execute as @a[team=12_light_gray] unless entity @s[scores={vc=12}] run tp @s 9147 68.00 5074 0 0
execute as @a[team=13_gray] unless entity @s[scores={vc=13}] run tp @s 9136 68.00 5083 0 0
execute as @a[team=14_brown] unless entity @s[scores={vc=14}] run tp @s 9129 69.1 5074 45 0
execute as @a[team=15_black] unless entity @s[scores={vc=15}] run tp @s 9130 70.00 5062 90 0