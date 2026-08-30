# This mostly duplicates /function ct:kill/execute/light_pyre.
# The execution functions will likely move in the future.

execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

fill 160 69 0 155 70 -5 minecraft:campfire[facing=north,lit=true] replace minecraft:campfire[facing=north,lit=false]
fill 160 69 0 155 70 -5 minecraft:campfire[facing=west,lit=true] replace minecraft:campfire[facing=west,lit=false]
fill 160 70 0 155 72 -6 minecraft:barrier replace minecraft:light
$execute as $(player) unless entity @s[x=228,y=66,z=-954,dx=2,dy=2,dz=2] run tp @s 158.0 70.5 -2.0
$tag $(player) add being_executed
playsound ct:clocktower.light_pyre voice @a 158.0 70.5 -2.0 0.8