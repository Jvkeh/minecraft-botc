execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9190.0 73.5 5098 0.0 0.0 0.0 0 1 force
execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9191 73.5 5098 0.0 0.0 0.0 0 1 force
execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9193.0 73.5 5098 0.0 0.0 0.0 0 1 force
execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9190.0 73.5 5117 0.0 0.0 0.0 0 1 force
execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9191 73.5 5117 0.0 0.0 0.0 0 1 force
execute if score bigtop vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 9193.0 73.5 5117 0.0 0.0 0.0 0 1 force

title @a[scores={vc=20}] actionbar {type:nbt,source:storage,storage:"ct:vc",interpret:true,nbt:"bigtop[]","separator":{text:" ",font:"minecraft:default"}}
execute if entity @a[tag=spectator,scores={vc=20}] unless data storage ct:vc bigtop[{"text":"👁","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc bigtop append value {"text":"👁","color":"gray","font":"minecraft:default"}
execute if entity @a[tag=storyteller,scores={vc=20}] unless data storage ct:vc bigtop[{"text":"✎","color":"gray","font":"minecraft:default"}] run data modify storage ct:vc bigtop append value {"text":"✎","color":"gray","font":"minecraft:default"}
execute unless entity @a[tag=spectator,scores={vc=20}] run data remove storage ct:vc bigtop[{"text":"👁","color":"gray","font":"minecraft:default"}]
execute unless entity @a[tag=storyteller,scores={vc=20}] run data remove storage ct:vc bigtop[{"text":"✎","color":"gray","font":"minecraft:default"}]
scoreboard players set bigtop vc 0