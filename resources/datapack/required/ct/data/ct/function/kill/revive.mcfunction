clear @s minecraft:player_head
tag @s remove dead
tag @s remove expended_ghost

execute as @s[team=01_red] run team modify 01_red suffix {"text":""}
execute as @s[team=02_orange] run team modify 02_orange suffix {"text":""}
execute as @s[team=03_yellow] run team modify 03_yellow suffix {"text":""}
execute as @s[team=04_lime] run team modify 04_lime suffix {"text":""}
execute as @s[team=05_green] run team modify 05_green suffix {"text":""}
execute as @s[team=06_cyan] run team modify 06_cyan suffix {"text":""}
execute as @s[team=07_light_blue] run team modify 07_light_blue suffix {"text":""}
execute as @s[team=08_blue] run team modify 08_blue suffix {"text":""}
execute as @s[team=09_purple] run team modify 09_purple suffix {"text":""}
execute as @s[team=10_magenta] run team modify 10_magenta suffix {"text":""}
execute as @s[team=11_pink] run team modify 11_pink suffix {"text":""}
execute as @s[team=12_light_gray] run team modify 12_light_gray suffix {"text":""}
execute as @s[team=13_gray] run team modify 13_gray suffix {"text":""}
execute as @s[team=14_brown] run team modify 14_brown suffix {"text":""}
execute as @s[team=15_black] run team modify 15_black suffix {"text":""}
tellraw @a [{"selector":"@s"},{"text":" came back to life.","color":"green"}]
execute as @a at @s run playsound ct:clocktower.revive voice @s ~ ~ ~ 1

execute as @a run function ct:util/update_shrouds