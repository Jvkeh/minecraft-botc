execute as @a[tag=!storyteller,tag=!spectator,tag=apothecary] run scoreboard players add apothecary vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=fishing_dock] run scoreboard players add fishing_dock vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=chapel] run scoreboard players add chapel vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=crypt] run scoreboard players add crypt vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=inn] run scoreboard players add inn vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=teapot] run scoreboard players add teapot vc 1
execute as @a[tag=!storyteller,tag=!spectator,tag=cave] run scoreboard players add cave vc 1
execute as @a[tag=!spectator,tag=den] run scoreboard players add den vc 1

execute if score apothecary vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 83 81 79 0 0 0 0 1 force
execute if score apothecary vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 84 81 79 0 0 0 0 1 force

execute if score fishing_dock vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 74 73 41 0 0 0 0 1 force
execute if score fishing_dock vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 75 73 41 0 0 0 0 1 force

execute if score chapel vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 113 83 127 0 0 0 0 1 force

execute if score crypt vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 123 83 134 0 0 0 0 1 force

execute if score inn vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 144 73 72 0 0 0 0 1 force

execute if score teapot vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 144 74 42 0 0 0 0 1 force

execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 108 73 60 0 0 0 0 1 force
execute if score cave vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 108 73 59 0 0 0 0 1 force

execute if score den vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 120 73 91 0 0 0 0 1 force
execute if score den vc matches 2.. run particle minecraft:block_marker{"block_state":"minecraft:barrier"} 121 73 91 0 0 0 0 1 force

scoreboard players set apothecary vc 0
scoreboard players set fishing_dock vc 0
scoreboard players set chapel vc 0
scoreboard players set crypt vc 0
scoreboard players set inn vc 0
scoreboard players set teapot vc 0
scoreboard players set cave vc 0
scoreboard players set den vc 0