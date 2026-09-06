execute if score popcorn vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9158 72.5 5067 0.0 0.0 0.0 0 1 force
execute if score popcorn vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9160 72.5 5069 0.0 0.0 0.0 0 1 force
title @a[scores={vc=21}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"popcorn[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=21}] unless data storage ct:vc popcorn[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc popcorn append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=21}] unless data storage ct:vc popcorn[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc popcorn append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=21}] run data remove storage ct:vc popcorn[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=21}] run data remove storage ct:vc popcorn[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set popcorn vc 0