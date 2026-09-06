# count players in each vc
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=16}] run scoreboard players add carousel vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=17}] run scoreboard players add cave vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=18}] run scoreboard players add maypole vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=19}] run scoreboard players add clocktoss vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=20}] run scoreboard players add bigtop vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=21}] run scoreboard players add popcorn vc 1
execute as @a[tag=!storyteller,tag=!spectator,scores={vc=22}] run scoreboard players add ft_tent vc 1
execute as @a[tag=!spectator,scores={vc=23}] run scoreboard players add head vc 1

# if at least one player is in the vc, try to send messages
execute if score carousel vc matches 1.. run function ct:loop/voicechat/carousel
execute if score cave vc matches 1.. run function ct:loop/voicechat/cave
execute if score maypole vc matches 1.. run function ct:loop/voicechat/maypole
execute if score clocktoss vc matches 1.. run function ct:loop/voicechat/clocktoss
execute if score bigtop vc matches 1.. run function ct:loop/voicechat/bigtop
execute if score popcorn vc matches 1.. run function ct:loop/voicechat/popcorn
execute if score ft_tent vc matches 1.. run function ct:loop/voicechat/ft_tent
execute if score head vc matches 1.. run function ct:loop/voicechat/head