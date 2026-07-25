# count players in each vc
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=16}] run scoreboard players add beets vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=17}] run scoreboard players add wheat vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=18}] run scoreboard players add church vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=19}] run scoreboard players add graveyard vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=21}] run scoreboard players add inn vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=20}] run scoreboard players add greenhouse vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=22}] run scoreboard players add bakery vc 1
execute as @a[tag=!spectator,scores={vc=23}] run scoreboard players add den vc 1

# if at least one player is in the vc, try to send messages
execute if score beets vc matches 1.. run function ct:loop/voicechat/beets
execute if score wheat vc matches 1.. run function ct:loop/voicechat/wheat
execute if score church vc matches 1.. run function ct:loop/voicechat/church
execute if score graveyard vc matches 1.. run function ct:loop/voicechat/graveyard
execute if score inn vc matches 1.. run function ct:loop/voicechat/inn
execute if score greenhouse vc matches 1.. run function ct:loop/voicechat/greenhouse
execute if score bakery vc matches 1.. run function ct:loop/voicechat/bakery
execute if score den vc matches 1.. run function ct:loop/voicechat/den