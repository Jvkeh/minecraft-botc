execute if score carousel vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9157 73 5028 0.0 0.0 0.0 0 1 force
execute if score carousel vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9156 73 5029 0.0 0.0 0.0 0 1 force
title @a[scores={vc=16}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"carousel[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=16}] unless data storage ct:vc carousel[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc carousel append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=16}] unless data storage ct:vc carousel[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc carousel append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=16}] run data remove storage ct:vc carousel[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=16}] run data remove storage ct:vc carousel[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set carousel vc 0