# if there's no timer to resume, do nothing
execute if score day_value game_data matches 0 run return fail

# otherwise...
bossbar set ct:day_time players @a
bossbar set ct:day_time visible true
execute if score day_value game_data matches 1.. run schedule function ct:util/timer/reduce_by_one 1s