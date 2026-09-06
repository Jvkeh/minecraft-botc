# This mostly duplicates /function ct:kill/execute/light_pyre.
# The execution functions will likely move in the future.

execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller
execute if score phase game_data matches 0 run return run function ct:error/game_not_active

fill 9171 77 5054 9173 77 5052 minecraft:campfire[facing=north,lit=true] replace minecraft:campfire
/fill 9170 77 5055 9174 79 5051 minecraft:barrier replace minecraft:light
$execute as $(player) unless entity @s[x=228,y=66,z=-954,dx=2,dy=2,dz=2] run tp @s 9172 77.6 5053
$tag $(player) add being_executed
playsound ct:clocktower.light_pyre voice @a 9172 77 5053 1 0.8