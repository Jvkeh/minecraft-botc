execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9200 73 5018 0.0 0.0 0.0 0 1 force
execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9201 73 5019 0.0 0.0 0.0 0 1 force
execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9202 73 5020 0.0 0.0 0.0 0 1 force
execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9203 73 5021 0.0 0.0 0.0 0 1 force
execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9204 73 5022 0.0 0.0 0.0 0 1 force
title @a[scores={vc=17}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"cave[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=17}] unless data storage ct:vc cave[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc cave append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=17}] unless data storage ct:vc cave[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc cave append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=17}] run data remove storage ct:vc cave[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=17}] run data remove storage ct:vc cave[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set cave vc 0