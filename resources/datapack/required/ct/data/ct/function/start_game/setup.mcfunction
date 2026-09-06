scoreboard players set player_count game_data 0
execute as @a[tag=!storyteller,tag=!spectator] run scoreboard players add player_count game_data 1
execute if score player_count game_data matches ..4 run return run function ct:error/not_enough_players
execute as @a if score player_count game_data matches 5 run function ct:start_game/roles/pcount {player:5,town:3,outsider:0,minion:1,demon:1}
execute as @a if score player_count game_data matches 6 run function ct:start_game/roles/pcount {player:6,town:3,outsider:1,minion:1,demon:1}
execute as @a if score player_count game_data matches 7 run function ct:start_game/roles/pcount {player:7,town:5,outsider:0,minion:1,demon:1}
execute as @a if score player_count game_data matches 8 run function ct:start_game/roles/pcount {player:8,town:5,outsider:1,minion:1,demon:1}
execute as @a if score player_count game_data matches 9 run function ct:start_game/roles/pcount {player:9,town:5,outsider:2,minion:1,demon:1}
execute as @a if score player_count game_data matches 10 run function ct:start_game/roles/pcount {player:10,town:7,outsider:0,minion:2,demon:1}
execute as @a if score player_count game_data matches 11 run function ct:start_game/roles/pcount {player:11,town:7,outsider:1,minion:2,demon:1}
execute as @a if score player_count game_data matches 12 run function ct:start_game/roles/pcount {player:12,town:7,outsider:2,minion:2,demon:1}
execute as @a if score player_count game_data matches 13 run function ct:start_game/roles/pcount {player:13,town:9,outsider:0,minion:3,demon:1}
execute as @a if score player_count game_data matches 14 run function ct:start_game/roles/pcount {player:14,town:9,outsider:1,minion:3,demon:1}
execute as @a if score player_count game_data matches 15 run function ct:start_game/roles/pcount {player:15,town:9,outsider:2,minion:3,demon:1}
execute if score player_count game_data matches 16.. run return run function ct:error/too_many_players

execute store result score active_game game_id run random value 1..2147483647
scoreboard players operation @a[tag=!storyteller] game_id = active_game game_id
scoreboard players set @a[tag=!storyteller] role 0
scoreboard players set @a[tag=!storyteller,tag=!spectator] reveal_cd 140
scoreboard players set @a[tag=!storyteller,tag=!spectator] vote_value 1
execute as @a run fmvariable set role false none
execute as @a run fmvariable set game_active false true
title @a times 1s 2s 1s

gamemode spectator @a[tag=spectator]

team join 01_red @r[team=,tag=!storyteller,tag=!spectator]
team join 02_orange @r[team=,tag=!storyteller,tag=!spectator]
team join 03_yellow @r[team=,tag=!storyteller,tag=!spectator]
team join 04_lime @r[team=,tag=!storyteller,tag=!spectator]
team join 05_green @r[team=,tag=!storyteller,tag=!spectator]
team join 06_cyan @r[team=,tag=!storyteller,tag=!spectator]
team join 07_light_blue @r[team=,tag=!storyteller,tag=!spectator]
team join 08_blue @r[team=,tag=!storyteller,tag=!spectator]
team join 09_purple @r[team=,tag=!storyteller,tag=!spectator]
team join 10_magenta @r[team=,tag=!storyteller,tag=!spectator]
team join 11_pink @r[team=,tag=!storyteller,tag=!spectator]
team join 12_light_gray @r[team=,tag=!storyteller,tag=!spectator]
team join 13_gray @r[team=,tag=!storyteller,tag=!spectator]
team join 14_brown @r[team=,tag=!storyteller,tag=!spectator]
team join 15_black @r[team=,tag=!storyteller,tag=!spectator]

function ct:util/color_names

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

data remove storage ct:players players

execute if data block 9166 71 5045 front_text.messages[1].text run data modify storage ct:players players.p1 set from block 9166 71 5045 front_text.messages[1].hover_event.name
execute if data block 9170 71 5044 front_text.messages[1].text run data modify storage ct:players players.p2 set from block 9170 71 5044 front_text.messages[1].hover_event.name
execute if data block 9174 71 5044 front_text.messages[1].text run data modify storage ct:players players.p3 set from block 9174 71 5044 front_text.messages[1].hover_event.name
execute if data block 9178 71 5045 front_text.messages[1].text run data modify storage ct:players players.p4 set from block 9178 71 5045 front_text.messages[1].hover_event.name
execute if data block 9180 71 5047 front_text.messages[1].text run data modify storage ct:players players.p5 set from block 9180 71 5047 front_text.messages[1].hover_event.name
execute if data block 9181 71 5051 front_text.messages[1].text run data modify storage ct:players players.p6 set from block 9181 71 5051 front_text.messages[1].hover_event.name
execute if data block 9181 71 5055 front_text.messages[1].text run data modify storage ct:players players.p7 set from block 9181 71 5055 front_text.messages[1].hover_event.name
execute if data block 9180 71 5059 front_text.messages[1].text run data modify storage ct:players players.p8 set from block 9180 71 5059 front_text.messages[1].hover_event.name
execute if data block 9178 71 5061 front_text.messages[1].text run data modify storage ct:players players.p9 set from block 9178 71 5061 front_text.messages[1].hover_event.name
execute if data block 9174 71 5062 front_text.messages[1].text run data modify storage ct:players players.p10 set from block 9174 71 5062 front_text.messages[1].hover_event.name
execute if data block 9170 71 5062 front_text.messages[1].text run data modify storage ct:players players.p11 set from block 9170 71 5062 front_text.messages[1].hover_event.name
execute if data block 9166 71 5061 front_text.messages[1].text run data modify storage ct:players players.p12 set from block 9166 71 5061 front_text.messages[1].hover_event.name
execute if data block 9164 71 5059 front_text.messages[1].text run data modify storage ct:players players.p13 set from block 9164 71 5059 front_text.messages[1].hover_event.name
execute if data block 9163 71 5055 front_text.messages[1].text run data modify storage ct:players players.p14 set from block 9163 71 5055 front_text.messages[1].hover_event.name
execute if data block 9163 71 5051 front_text.messages[1].text run data modify storage ct:players players.p15 set from block 9163 71 5051 front_text.messages[1].hover_event.name

execute unless data block 9166 71 5045 front_text.messages[1].text run data modify storage ct:players players.p1 set value "Nobody!"
execute unless data block 9170 71 5044 front_text.messages[1].text run data modify storage ct:players players.p2 set value "Nobody!"
execute unless data block 9174 71 5044 front_text.messages[1].text run data modify storage ct:players players.p3 set value "Nobody!"
execute unless data block 9178 71 5045 front_text.messages[1].text run data modify storage ct:players players.p4 set value "Nobody!"
execute unless data block 9180 71 5047 front_text.messages[1].text run data modify storage ct:players players.p5 set value "Nobody!"
execute unless data block 9181 71 5051 front_text.messages[1].text run data modify storage ct:players players.p6 set value "Nobody!"
execute unless data block 9181 71 5055 front_text.messages[1].text run data modify storage ct:players players.p7 set value "Nobody!"
execute unless data block 9180 71 5059 front_text.messages[1].text run data modify storage ct:players players.p8 set value "Nobody!"
execute unless data block 9178 71 5061 front_text.messages[1].text run data modify storage ct:players players.p9 set value "Nobody!"
execute unless data block 9174 71 5062 front_text.messages[1].text run data modify storage ct:players players.p10 set value "Nobody!"
execute unless data block 9170 71 5062 front_text.messages[1].text run data modify storage ct:players players.p11 set value "Nobody!"
execute unless data block 9166 71 5061 front_text.messages[1].text run data modify storage ct:players players.p12 set value "Nobody!"
execute unless data block 9164 71 5059 front_text.messages[1].text run data modify storage ct:players players.p13 set value "Nobody!"
execute unless data block 9163 71 5055 front_text.messages[1].text run data modify storage ct:players players.p14 set value "Nobody!"
execute unless data block 9163 71 5051 front_text.messages[1].text run data modify storage ct:players players.p15 set value "Nobody!"

data modify entity @e[tag=house_head,limit=1,scores={house_id=1}] item.components.minecraft:profile.name set from storage ct:players players.p1
data modify entity @e[tag=house_head,limit=1,scores={house_id=2}] item.components.minecraft:profile.name set from storage ct:players players.p2
data modify entity @e[tag=house_head,limit=1,scores={house_id=3}] item.components.minecraft:profile.name set from storage ct:players players.p3
data modify entity @e[tag=house_head,limit=1,scores={house_id=4}] item.components.minecraft:profile.name set from storage ct:players players.p4
data modify entity @e[tag=house_head,limit=1,scores={house_id=5}] item.components.minecraft:profile.name set from storage ct:players players.p5
data modify entity @e[tag=house_head,limit=1,scores={house_id=6}] item.components.minecraft:profile.name set from storage ct:players players.p6
data modify entity @e[tag=house_head,limit=1,scores={house_id=7}] item.components.minecraft:profile.name set from storage ct:players players.p7
data modify entity @e[tag=house_head,limit=1,scores={house_id=8}] item.components.minecraft:profile.name set from storage ct:players players.p8
data modify entity @e[tag=house_head,limit=1,scores={house_id=9}] item.components.minecraft:profile.name set from storage ct:players players.p9
data modify entity @e[tag=house_head,limit=1,scores={house_id=10}] item.components.minecraft:profile.name set from storage ct:players players.p10
data modify entity @e[tag=house_head,limit=1,scores={house_id=11}] item.components.minecraft:profile.name set from storage ct:players players.p11
data modify entity @e[tag=house_head,limit=1,scores={house_id=12}] item.components.minecraft:profile.name set from storage ct:players players.p12
data modify entity @e[tag=house_head,limit=1,scores={house_id=13}] item.components.minecraft:profile.name set from storage ct:players players.p13
data modify entity @e[tag=house_head,limit=1,scores={house_id=14}] item.components.minecraft:profile.name set from storage ct:players players.p14
data modify entity @e[tag=house_head,limit=1,scores={house_id=15}] item.components.minecraft:profile.name set from storage ct:players players.p15

execute as @e[type=minecraft:text_display,tag=home_label] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:text_display,tag=home_label] if score @s house_id <= player_count game_data run data modify entity @s view_range set value 1

function ct:util/color_prefixes

scoreboard players set @a[team=01_red] id 1
scoreboard players set @a[team=02_orange] id 2
scoreboard players set @a[team=03_yellow] id 3
scoreboard players set @a[team=04_lime] id 4
scoreboard players set @a[team=05_green] id 5
scoreboard players set @a[team=06_cyan] id 6
scoreboard players set @a[team=07_light_blue] id 7
scoreboard players set @a[team=08_blue] id 8
scoreboard players set @a[team=09_purple] id 9
scoreboard players set @a[team=10_magenta] id 10
scoreboard players set @a[team=11_pink] id 11
scoreboard players set @a[team=12_light_gray] id 12
scoreboard players set @a[team=13_gray] id 13
scoreboard players set @a[team=14_brown] id 14
scoreboard players set @a[team=15_black] id 15

# execute if score birthday_mode settings matches 1 run item replace entity @a[team=01_red] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_red"]},minecraft:equippable={slot:"head"},minecraft:item_name="Red Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=02_orange] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_orange"]},minecraft:equippable={slot:"head"},minecraft:item_name="Orange Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=03_yellow] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_yellow"]},minecraft:equippable={slot:"head"},minecraft:item_name="Yellow Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=04_lime] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_lime"]},minecraft:equippable={slot:"head"},minecraft:item_name="Lime Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=05_green] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_blue"]},minecraft:equippable={slot:"head"},minecraft:item_name="Blue Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=06_cyan] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_purple"]},minecraft:equippable={slot:"head"},minecraft:item_name="Purple Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=07_light_blue] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_white"]},minecraft:equippable={slot:"head"},minecraft:item_name="White Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=08_blue] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_gray"]},minecraft:equippable={slot:"head"},minecraft:item_name="Gray Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=09_purple] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_green"]},minecraft:equippable={slot:"head"},minecraft:item_name="Green Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=10_magenta] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_light_blue"]},minecraft:equippable={slot:"head"},minecraft:item_name="Light Blue Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=11_pink] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_pink"]},minecraft:equippable={slot:"head"},minecraft:item_name="Pink Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity @a[team=12_light_gray] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_brown"]},minecraft:equippable={slot:"head"},minecraft:item_name="Brown Party Hat"]# 

# execute if score birthday_mode settings matches 1 run item replace entity @a[tag=storyteller] armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["party_hat_gray"]},minecraft:equippable={slot:"head"},minecraft:item_name="Gray Party Hat"]
# execute if score birthday_mode settings matches 1 run item replace entity Zinneko armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data={strings:["cake_hat"]},minecraft:equippable={slot:"head"},minecraft:item_name="Cake Hat"]

# execute as @a run scoreboard players operation @s game_data = @s id

execute as @e[type=minecraft:item_display,tag=house_head] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=house_head] if score @s house_id <= player_count game_data run data modify entity @s view_range set value 1

function ct:phase/night
clear @a[tag=!storyteller] minecraft:carrot_on_a_stick
item replace entity @a[tag=!storyteller,tag=!spectator] hotbar.0 with minecraft:writable_book[minecraft:custom_model_data={strings:["script"]},custom_name=[{text:"Notebook",color:"yellow",italic:false},{text:" [Right-Click]",color:"gray",italic:false}]]
execute as @a run function ct:admin/give_script

execute as @a run function ct:start_game/roles/set_grim_variables with storage ct:players players
execute as @a[tag=!storyteller,tag=!spectator] run loot give @s loot ct:compass

execute as @a[tag=!has_role,tag=!storyteller,tag=!spectator,sort=random,limit=1] run function ct:start_game/give_role
execute as @a[tag=!has_role,tag=!storyteller,tag=!spectator,sort=random,limit=1] run function ct:start_game/random_roles
scoreboard players set @a[tag=!storyteller,tag=!spectator] vote_value 1
schedule function ct:start_game/roles/reveal_to_st 1t
schedule function ct:start_game/apply_labels 2t
schedule function ct:admin/variables/score 3t
schedule function ct:util/sync_variables 4t