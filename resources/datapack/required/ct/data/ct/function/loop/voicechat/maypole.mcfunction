execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9221 73 5082 0.0 0.0 0.0 0 1 force
execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9220 73 5084 0.0 0.0 0.0 0 1 force
execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9219 73 5086 0.0 0.0 0.0 0 1 force
execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9201 73 5078 0.0 0.0 0.0 0 1 force
execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9202 73 5076 0.0 0.0 0.0 0 1 force
execute if score maypole vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9203 73 5074 0.0 0.0 0.0 0 1 force

title @a[scores={vc=18}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"maypole[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=18}] unless data storage ct:vc maypole[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc maypole append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=18}] unless data storage ct:vc maypole[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc maypole append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=18}] run data remove storage ct:vc maypole[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=18}] run data remove storage ct:vc maypole[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set maypole vc 0