execute as @e[type=minecraft:item_display,tag=exclamation_yellow] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=exclamation_red] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=vc] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=house] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=vote_marker] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=vote_marker] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "voting_no"
execute as @e[type=minecraft:item_display,tag=arm] run data modify entity @s view_range set value 0


schedule clear ct:loop/vote/cycle

data modify storage ct:seats seats set value [{username:"Nobody",role:0,alive:0,reminders:[]}]
data merge storage ct:nominations {days:[{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]}

scoreboard players reset * vote_value
scoreboard players reset * vote_tokens
scoreboard players reset * neighbor_check
scoreboard players reset * pointing
scoreboard players reset * pointing_at
scoreboard players reset * reveal_cd
scoreboard players reset * use_carrot

scoreboard players set start vote 0
scoreboard players set current_majority vote 0
scoreboard players set current vote 0
scoreboard players set first vote 0
scoreboard players set total vote 0

scoreboard players set ghost_votes game_data 0
scoreboard players set alive_players game_data 0
scoreboard players set current_day game_data 0
scoreboard players set phase game_data 0
scoreboard players set vote_active game_data 0

scoreboard players set organ_grinder settings 0

bossbar set ct:votes visible false
bossbar set ct:day_time visible false

execute as @a run function ct:util/reset_player

gamerule advance_time false
time set 12000

team modify 01_red suffix {"text":""}
team modify 02_orange suffix {"text":""}
team modify 03_yellow suffix {"text":""}
team modify 04_lime suffix {"text":""}
team modify 05_green suffix {"text":""}
team modify 06_cyan suffix {"text":""}
team modify 07_light_blue suffix {"text":""}
team modify 08_blue suffix {"text":""}
team modify 09_purple suffix {"text":""}
team modify 10_magenta suffix {"text":""}
team modify 11_pink suffix {"text":""}
team modify 12_light_gray suffix {"text":""}
team modify 13_gray suffix {"text":""}
team modify 14_brown suffix {"text":""}
team modify 15_black suffix {"text":""}

team modify 99_storyteller nametagVisibility always
team modify 01_red nametagVisibility always
team modify 02_orange nametagVisibility always
team modify 03_yellow nametagVisibility always
team modify 04_lime nametagVisibility always
team modify 05_green nametagVisibility always
team modify 06_cyan nametagVisibility always
team modify 07_light_blue nametagVisibility always
team modify 08_blue nametagVisibility always
team modify 09_purple nametagVisibility always
team modify 10_magenta nametagVisibility always
team modify 11_pink nametagVisibility always
team modify 12_light_gray nametagVisibility always
team modify 13_gray nametagVisibility always
team modify 14_brown nametagVisibility always
team modify 15_black nametagVisibility always
team modify 00_spectator nametagVisibility always

function ct:util/color_prefixes
function ct:util/reset_in_roles

data modify block 9166 71 5045 front_text.messages[1] set value {"selector":"@a[team=01_red]","color":"#B02E26"}
data modify block 9170 71 5044 front_text.messages[1] set value {"selector":"@a[team=02_orange]","color":"#F9801D"}
data modify block 9174 71 5044 front_text.messages[1] set value {"selector":"@a[team=03_yellow]","color":"#FED83D"}
data modify block 9178 71 5045 front_text.messages[1] set value {"selector":"@a[team=04_lime]","color":"#80C71F"}
data modify block 9180 71 5047 front_text.messages[1] set value {"selector":"@a[team=05_green]","color":"#5E7C16"}
data modify block 9181 71 5051 front_text.messages[1] set value {"selector":"@a[team=06_cyan]","color":"#169C9C"}
data modify block 9181 71 5055 front_text.messages[1] set value {"selector":"@a[team=07_light_blue]","color":"#3AB3DA"}
data modify block 9180 71 5059 front_text.messages[1] set value {"selector":"@a[team=08_blue]","color":"#3C44AA"}
data modify block 9178 71 5061 front_text.messages[1] set value {"selector":"@a[team=09_purple]","color":"#8932B8"}
data modify block 9174 71 5062 front_text.messages[1] set value {"selector":"@a[team=10_magenta]","color":"#C74EBD"}
data modify block 9170 71 5062 front_text.messages[1] set value {"selector":"@a[team=11_pink]","color":"#F38BAA"}
data modify block 9166 71 5061 front_text.messages[1] set value {"selector":"@a[team=12_light_gray]","color":"#9D9D97"}
data modify block 9164 71 5059 front_text.messages[1] set value {"selector":"@a[team=13_gray]","color":"#474F52"}
data modify block 9163 71 5055 front_text.messages[1] set value {"selector":"@a[team=14_brown]","color":"#835432"}
data modify block 9163 71 5051 front_text.messages[1] set value {"selector":"@a[team=15_black]","color":"#1D1D21"}
execute as @e[type=minecraft:item_display,tag=house_head] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:text_display,tag=home_label] run data modify entity @s view_range set value 0

execute as @a[tag=storyteller] run function ct:admin/give_script
schedule function ct:admin/reset_st_variables 1s
function ct:util/sync_variables