execute unless block ~ -64 ~ #ct:vc_marker as @s[tag=!den] run voicechat leave
tag @s remove apothecary
tag @s remove fishing_dock
tag @s remove chapel
tag @s remove inn
tag @s remove teapot

execute if block ~ -64 ~ #ct:house_marker if score phase game_data matches 4 run clear @s[tag=!storyteller] minecraft:compass
execute if block ~ -64 ~ #ct:house_marker if score phase game_data matches 4 run tellraw @s[tag=!in_house,tag=!storyteller] [{"text":"⌚ ","color":"red"},{"text":"There is a demon about. Do not leave your house at night.","color":"gray"}]

execute if block ~ -64 ~ minecraft:dark_oak_planks run tellraw @s[tag=!in_vc] [{"text":" Joined the Apothecary chat.","color":"gray","italic":true,"bold":false}]
execute if block ~ -64 ~ minecraft:oak_planks run tellraw @s[tag=!in_vc] [{"text":" Joined the Fishing Dock chat.","color":"gray","italic":true,"bold":false}]
execute if block ~ -64 ~ minecraft:acacia_planks run tellraw @s[tag=!in_vc] [{"text":" Joined the Chapel chat.","color":"gray","italic":true,"bold":false}]
execute if block ~ -64 ~ minecraft:mangrove_planks run tellraw @s[tag=!in_vc] [{"text":" Joined the Teapot chat.","color":"gray","italic":true,"bold":false}]
execute if block ~ -64 ~ minecraft:pale_oak_planks run tellraw @s[tag=!in_vc] [{"text":" Joined the Inn chat.","color":"gray","italic":true,"bold":false}]
tellraw @s[tag=!cave,x=101,y=72,z=56,dx=6,dy=3,dz=7] [{"text":" Joined the Cave chat.","color":"gray","italic":true,"bold":false}]
tellraw @s[tag=!crypt,x=121,y=75,z=140,dx=4,dy=3,dz=13] [{"text":" Joined the Crypt chat.","color":"gray","italic":true,"bold":false}]
tellraw @s[tag=!den,x=118,y=72,z=92,dx=5,dy=4,dz=5] [{"text":" Joined the Storyteller Den chat.","color":"gray","italic":true,"bold":false}]

tellraw @s[tag=!secret,x=106,y=63,z=-10,dx=12,dy=4,dz=7] [{"text":" Welcome to the Secret Hideout!","color":"gray","italic":true,"bold":false}]

execute if block ~ -64 ~ minecraft:dark_oak_planks run tag @s add apothecary
execute if block ~ -64 ~ minecraft:oak_planks run tag @s add fishing_dock
execute if block ~ -64 ~ minecraft:acacia_planks run tag @s add chapel
execute if block ~ -64 ~ minecraft:pale_oak_planks run tag @s add inn
execute if block ~ -64 ~ minecraft:mangrove_planks run tag @s add teapot

tag @s remove cave
tag @s[x=101,y=72,z=56,dx=6,dy=3,dz=7] add cave
tag @s remove crypt
tag @s[x=121,y=75,z=140,dx=4,dy=3,dz=13] add crypt
tag @s remove den
tag @s[x=118,y=72,z=92,dx=5,dy=4,dz=5] add den
tag @s remove secret
tag @s[x=106,y=63,z=-10,dx=12,dy=4,dz=7] add secret

title @s[tag=!storyteller,tag=apothecary,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=apothecary,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=fishing_dock,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=fishing_dock,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=chapel,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=chapel,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=crypt,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=crypt,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=inn,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=inn,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=teapot,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=teapot,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=cave,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=cave,tag=!storyteller]","font":"minecraft:default"}]
title @s[tag=!storyteller,tag=den,tag=!requesting_chat] actionbar [{"text":"\ua000","font":"ct:icons"},{"text":" ","font":"minecraft:default"},{"selector":"@a[tag=den,tag=!storyteller]","font":"minecraft:default"}]

execute if block ~ -64 ~ #ct:house_marker run tag @s add in_house
execute if block ~ -64 ~ #ct:vc_marker run tag @s add in_vc

execute unless block ~ -64 ~ #ct:house_marker run tag @s remove in_house
execute unless block ~ -64 ~ #ct:vc_marker run tag @s remove in_vc

execute if block ~ -64 ~ minecraft:red_concrete run voicechat join "Red House" ct
execute if block ~ -64 ~ minecraft:orange_concrete run voicechat join "Orange House" ct
execute if block ~ -64 ~ minecraft:yellow_concrete run voicechat join "Yellow House" ct
execute as @s[x=97,y=73,z=26,dx=6,dy=4,dz=8] run voicechat join "Lime House" ct
execute if block ~ -64 ~ minecraft:green_concrete run voicechat join "Green House" ct
execute if block ~ -64 ~ minecraft:green_wool run voicechat join "Mint House" ct
execute if block ~ -64 ~ minecraft:cyan_concrete run voicechat join "Cyan House" ct
execute if block ~ -64 ~ minecraft:blue_concrete run voicechat join "Blue House" ct
execute if block ~ -64 ~ minecraft:blue_wool run voicechat join "Navy House" ct
execute if block ~ -64 ~ minecraft:purple_concrete run voicechat join "Purple House" ct
execute if block ~ -64 ~ minecraft:pink_concrete run voicechat join "Lavender House" ct
execute if block ~ -64 ~ minecraft:magenta_concrete run voicechat join "Magenta House" ct
execute if block ~ -64 ~ minecraft:white_concrete run voicechat join "White House" ct
execute if block ~ -64 ~ minecraft:gray_concrete run voicechat join "Gray House" ct
execute if block ~ -64 ~ minecraft:black_concrete run voicechat join "Black House" ct

execute if block ~ -64 ~ minecraft:dark_oak_planks run voicechat join "Apothecary" ct
execute if block ~ -64 ~ minecraft:oak_planks run voicechat join "Fishing Dock" ct
execute if block ~ -64 ~ minecraft:acacia_planks run voicechat join "Chapel" ct
execute if block ~ -64 ~ minecraft:mangrove_planks run voicechat join "Teapot" ct
execute if block ~ -64 ~ minecraft:pale_oak_planks run voicechat join "Inn" ct
execute if block ~ -64 ~ minecraft:warped_planks run voicechat join "Town Square" ct

execute as @s[tag=cave,x=101,y=72,z=56,dx=6,dy=3,dz=7] run voicechat join "Cave" ct
execute as @s[tag=crypt,x=121,y=75,z=140,dx=4,dy=3,dz=13] run voicechat join "Crypt" ct
execute as @s[tag=den,x=118,y=72,z=92,dx=5,dy=4,dz=5] run voicechat join "Storyteller Den" ct
execute as @s[tag=secret,x=106,y=63,z=-10,dx=12,dy=4,dz=7] run voicechat join "Secret Hideout" ct