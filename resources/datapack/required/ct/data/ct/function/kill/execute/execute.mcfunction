fill 9171 77 5054 9173 77 5052 minecraft:campfire[facing=north,lit=false] replace minecraft:campfire
fill 9170 77 5055 9174 79 5051 minecraft:light[level=0] replace minecraft:barrier

function ct:util/color_names
tellraw @a [{"selector":"@s"},{"text":" has been executed.","color":"red"}]
function ct:util/color_prefixes

execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt
execute at @s run summon minecraft:lightning_bolt

tag @s remove being_executed
tag @s remove marked_for_execution