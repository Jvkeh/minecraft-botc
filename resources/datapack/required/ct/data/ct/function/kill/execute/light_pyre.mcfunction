fill 160 69 0 155 70 -5 minecraft:campfire[facing=north,lit=true] replace minecraft:campfire[facing=north,lit=false]
fill 160 69 0 155 70 -5 minecraft:campfire[facing=west,lit=true] replace minecraft:campfire[facing=west,lit=false]
fill 160 70 0 155 72 -6 minecraft:barrier replace minecraft:light
execute unless entity @a[x=228,y=66,z=-954,dx=2,dy=2,dz=2,tag=marked_for_execution] run tp @a[tag=marked_for_execution] 158.0 70.5 -2.0
tag @a[tag=marked_for_execution] add being_executed
playsound ct:clocktower.light_pyre voice @a 158.0 70.5 -2.0 1 0.8