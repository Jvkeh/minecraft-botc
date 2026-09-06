tellraw @a [{"selector":"@s"},{"text":" died.","color":"red"}]
loot replace entity @s armor.head loot ct:skulls
tag @s add dead
tag @s add died_today
execute if entity @s[tag=voting_yes] run function ct:item/vote_no


execute as @a at @s run playsound ct:clocktower.night_death player @s
execute as @s[team=01_red] run team modify 01_red suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=02_orange] run team modify 02_orange suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=03_yellow] run team modify 03_yellow suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=04_lime] run team modify 04_lime suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=05_green] run team modify 05_green suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=06_cyan] run team modify 06_cyan suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=07_light_blue] run team modify 07_light_blue suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=08_blue] run team modify 08_blue suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=09_purple] run team modify 09_purple suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=10_magenta] run team modify 10_magenta suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=11_pink] run team modify 11_pink suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=12_light_gray] run team modify 12_light_gray suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=13_gray] run team modify 13_gray suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=14_brown] run team modify 14_brown suffix {"text":" ☠","color":"dark_gray"}
execute as @s[team=15_black] run team modify 15_black suffix {"text":" ☠","color":"dark_gray"}
#put this in later: $execute as @s[team=$(team)] run team modify $(team) suffix {"text":" ☠","color":"dark_gray"}

execute as @a run function ct:util/update_shrouds
function ct:admin/variables/score
function ct:util/sync_variables