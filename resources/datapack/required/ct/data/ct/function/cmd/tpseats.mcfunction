execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

tp @a[team=01_red] 165 70.6 -0 101.3 0
tp @a[team=02_orange] 164 70.6 2 124.7 0
tp @a[team=03_yellow] 162 70.6 4 145.3 0
tp @a[team=04_lime] 159 70.6 5 168.7 0
tp @a[team=05_green] 156 70.6 5 -168.7 0
tp @a[team=06_mint] 153 70.6 4 -145.3 0
tp @a[team=07_cyan] 151 70.6 2 -124.7 0
tp @a[team=08_blue] 150 70.6 -1 -101.3 0
tp @a[team=09_navy] 150 70.6 -4 -78.7 0
tp @a[team=10_purple] 151 70.6 -7 -55.3 0
tp @a[team=11_magenta] 153 70.6 -9 -34.7 0
tp @a[team=12_lavender] 156 70.6 -10 -11.3 0
tp @a[team=13_white] 159 70.6 -10 11.3 0
tp @a[team=14_gray] 162 70.6 -9 34.7 0
tp @a[team=15_black] 164 70.6 -7 55.3 0