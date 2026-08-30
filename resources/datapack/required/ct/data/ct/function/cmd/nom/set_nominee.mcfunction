execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

tag @a remove nominee
$tag $(p) add nominee

$execute if score $(p) id matches 1 unless data entity @e[type=minecraft:text_display, tag=red_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=red_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 2 unless data entity @e[type=minecraft:text_display, tag=orange_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=orange_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 3 unless data entity @e[type=minecraft:text_display, tag=yellow_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=yellow_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 4 unless data entity @e[type=minecraft:text_display, tag=lime_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=lime_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 5 unless data entity @e[type=minecraft:text_display, tag=green_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=green_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 6 unless data entity @e[type=minecraft:text_display, tag=mint_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=mint_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 7 unless data entity @e[type=minecraft:text_display, tag=cyan_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=cyan_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 8 unless data entity @e[type=minecraft:text_display, tag=blue_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=blue_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 9 unless data entity @e[type=minecraft:text_display, tag=navy_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=navy_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 10 unless data entity @e[type=minecraft:text_display, tag=purple_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=purple_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 11 unless data entity @e[type=minecraft:text_display, tag=magenta_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=magenta_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 12 unless data entity @e[type=minecraft:text_display, tag=lavender_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=lavender_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 13 unless data entity @e[type=minecraft:text_display, tag=white_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=white_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 14 unless data entity @e[type=minecraft:text_display, tag=gray_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=gray_player_name, limit=1] text.hover_event.name
$execute if score $(p) id matches 15 unless data entity @e[type=minecraft:text_display, tag=black_player_name, limit=1] {"text":""} run data modify storage ct:nominations current_nominee set from entity @e[type=minecraft:text_display ,tag=black_player_name, limit=1] text.hover_event.name

closeguiscreen @s
execute as @e[type=minecraft:item_display,tag=nominee_arm,limit=1] run function ct:cmd/nom/long_arm with storage ct:nominations

execute if score noms_pause_timer settings matches 1 run return run function ct:util/timer/pause