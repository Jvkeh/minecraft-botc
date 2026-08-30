execute if entity @s[tag=!storyteller] run return run function ct:error/not_storyteller

$scoreboard players set clock_speed settings $(n)
$fmvariable set clock_speed false $(n)