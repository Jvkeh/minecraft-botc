scoreboard players remove day_seconds game_data 1
scoreboard players remove day_value game_data 1
execute if score day_seconds game_data matches -1 run scoreboard players remove day_minutes game_data 1
execute if score day_seconds game_data matches -1 run scoreboard players set day_seconds game_data 59

function ct:util/timer/update_display_number

execute if score day_value game_data matches 1.. run return run schedule function ct:util/timer/reduce_by_one 1s

# if there isn't any time left in the timer:
# TODO: make this a custom sound: execute as @a run playsound block.bell.use voice @s ~ ~ ~ 1 1
function ct:util/timer/end