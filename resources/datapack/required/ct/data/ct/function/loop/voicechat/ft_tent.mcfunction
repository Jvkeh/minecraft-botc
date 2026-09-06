execute if score ft_tent vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9143 72.5 5052 0.0 0.0 0.0 0 1 force
title @a[scores={vc=22}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"ft_tent[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=22}] unless data storage ct:vc ft_tent[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc ft_tent append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=22}] unless data storage ct:vc ft_tent[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc ft_tent append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=22}] run data remove storage ct:vc ft_tent[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=22}] run data remove storage ct:vc ft_tent[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set ft_tent vc 0