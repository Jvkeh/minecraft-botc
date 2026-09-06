execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

tag @a remove nominator
$tag $(p) add nominator

$execute if score $(p) id matches 1 if data block 9166 71 5045 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9166 71 5045 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 2 if data block 9170 71 5044 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9170 71 5044 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 3 if data block 9174 71 5044 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9174 71 5044 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 4 if data block 9178 71 5045 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9178 71 5045 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 5 if data block 9180 71 5047 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9180 71 5047 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 6 if data block 9181 71 5051 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9181 71 5051 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 7 if data block 9181 71 5055 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9181 71 5055 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 8 if data block 9180 71 5059 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9180 71 5059 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 9 if data block 9178 71 5061 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9178 71 5061 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 10 if data block 9174 71 5062 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9174 71 5062 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 11 if data block 9170 71 5062 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9170 71 5062 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 12 if data block 9166 71 5061 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9166 71 5061 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 13 if data block 9164 71 5059 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9164 71 5059 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 14 if data block 9163 71 5055 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9163 71 5055 front_text.messages[1].hover_event.name
$execute if score $(p) id matches 15 if data block 9163 71 5051 front_text.messages[1].text run data modify storage ct:nominations current_nominator set from block 9163 71 5051 front_text.messages[1].hover_event.name

execute store result storage ct:nominations day int 1 run scoreboard players get current_day game_data
execute as @e[type=minecraft:item_display,tag=nominator_arm,limit=1] run function ct:cmd/nom/short_arm