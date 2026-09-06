execute if score head vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9116 72.5 5043.0 0.0 0.0 0.0 0 1 force
execute if score head vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9116 72.5 5044 0.0 0.0 0.0 0 1 force
execute if score head vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9116 72.5 5046.0 0.0 0.0 0.0 0 1 force
title @a[scores={vc=23}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"head[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=23}] unless data storage ct:vc head[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc head append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=23}] unless data storage ct:vc head[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc head append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=23}] run data remove storage ct:vc head[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=23}] run data remove storage ct:vc head[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set head vc 0