fill 160 69 0 155 70 -5 minecraft:campfire[facing=north,lit=false] replace minecraft:campfire[facing=north,lit=true]
fill 160 69 0 155 70 -5 minecraft:campfire[facing=west,lit=false] replace minecraft:campfire[facing=west,lit=true]
fill 160 70 0 155 72 -6 minecraft:light replace minecraft:barrier

function ct:util/color_names
tellraw @a [{"selector":"@s"},{"text":" has been executed.","color":"red"}]
function ct:util/color_prefixes

execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt

tag @s remove being_executed
tag @s remove marked_for_execution