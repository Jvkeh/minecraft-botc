fill 9171 77 5054 9173 77 5052 minecraft:campfire[facing=north,lit=true] replace minecraft:campfire
fill 9170 77 5055 9174 79 5051 minecraft:barrier replace minecraft:light

execute unless entity @a[x=228,y=66,z=-954,dx=2,dy=2,dz=2,tag=marked_for_execution] run tp @a[tag=marked_for_execution] 9172 77.6 5053
tag @a[tag=marked_for_execution] add being_executed
playsound ct:clocktower.light_pyre voice @a 9172 77 5053 1 0.8