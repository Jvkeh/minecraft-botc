execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

tp @a[team=01_red] 9166 71.5 5044 -33.7 0
tp @a[team=02_orange] 9170 71.5 5043 -11.3 0
tp @a[team=03_yellow] 9174 71.5 5043 11.3 0
tp @a[team=04_lime] 9178 71.5 5044 33.7 0
tp @a[team=05_green] 9181 71.5 5047 56.3 0
tp @a[team=06_cyan] 9182 71.5 5051 78.7 0
tp @a[team=07_light_blue] 9182 71.5 5055 101.3 0
tp @a[team=08_blue] 9181 71.5 5059 123.7 0
tp @a[team=09_purple] 9178 71.5 5062 146.3 0
tp @a[team=10_magenta] 9174 71.5 5063 168.7 0
tp @a[team=11_pink] 9170 71.5 5063 -168.7 0
tp @a[team=12_light_gray] 9166 71.5 5062 -146.3 0
tp @a[team=13_gray] 9163 71.5 5059 -123.7 0
tp @a[team=14_brown] 9162 71.5 5055 -101.3 0
tp @a[team=15_black] 9162 71.5 5051 -78.7 0