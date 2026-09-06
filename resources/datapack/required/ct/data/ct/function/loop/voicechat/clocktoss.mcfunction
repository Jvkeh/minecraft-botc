execute if score clocktoss vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9185 72.5 5082 0.0 0.0 0.0 0 1 force
execute if score clocktoss vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9185 72.5 5081 0.0 0.0 0.0 0 1 force
execute if score clocktoss vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9185 72.5 5080 0.0 0.0 0.0 0 1 force
title @a[scores={vc=19}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"clocktoss[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=19}] unless data storage ct:vc clocktoss[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc clocktoss append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=19}] unless data storage ct:vc clocktoss[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc clocktoss append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=19}] run data remove storage ct:vc clocktoss[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=19}] run data remove storage ct:vc clocktoss[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set clocktoss vc 0