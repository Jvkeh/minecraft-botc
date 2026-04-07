function ct:cmd/spectator/add

$execute if entity @s[tag=!spectator] run tellraw @a[tag=spectator] "$(target) is now a spectator."
execute if entity @s[tag=!spectator] run tellraw @s "You are now a spectator for this upcoming game."
$execute if entity @s[tag=spectator] run tellraw @a[tag=spectator] "$(target) is already a spectator."

execute if entity @s[tag=!spectator] run team join 00_spectator @s
fmvariable set storyteller false true
tag @s add storyteller
function ct:admin/give_script