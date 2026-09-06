execute as @a[tag=!in_vc,scores={vc=1..}] at @s run function ct:loop/voicechat/messages
tag @a[scores={vc=1..}] add in_vc
execute if predicate ct:vc/houses/red_house run return run function ct:voicechat/houses/red_house
execute if predicate ct:vc/houses/orange_house run return run function ct:voicechat/houses/orange_house
execute if predicate ct:vc/houses/yellow_house run return run function ct:voicechat/houses/yellow_house
execute if predicate ct:vc/houses/lime_house run return run function ct:voicechat/houses/lime_house
execute if predicate ct:vc/houses/green_house run return run function ct:voicechat/houses/green_house
execute if predicate ct:vc/houses/cyan_house run return run function ct:voicechat/houses/cyan_house
execute if predicate ct:vc/houses/light_blue_house run return run function ct:voicechat/houses/light_blue_house
execute if predicate ct:vc/houses/blue_house run return run function ct:voicechat/houses/blue_house
execute if predicate ct:vc/houses/purple_house run return run function ct:voicechat/houses/purple_house
execute if predicate ct:vc/houses/magenta_house run return run function ct:voicechat/houses/magenta_house
execute if predicate ct:vc/houses/pink_house run return run function ct:voicechat/houses/pink_house
execute if predicate ct:vc/houses/light_gray_house run return run function ct:voicechat/houses/light_gray_house
execute if predicate ct:vc/houses/gray_house run return run function ct:voicechat/houses/gray_house
execute if predicate ct:vc/houses/brown_house run return run function ct:voicechat/houses/brown_house
execute if predicate ct:vc/houses/black_house run return run function ct:voicechat/houses/black_house

execute positioned 9146 70 5018 if predicate ct:vc/town/carousel run return run function ct:voicechat/town/carousel
execute positioned 9211 72 5080 if predicate ct:vc/town/maypole run return run function ct:voicechat/town/maypole
execute if predicate ct:vc/town/clocktoss run return run function ct:voicechat/town/clocktoss
execute if predicate ct:vc/town/bigtop run return run function ct:voicechat/town/bigtop
execute if predicate ct:vc/town/popcorn run return run function ct:voicechat/town/popcorn
execute if predicate ct:vc/town/ft_tent run return run function ct:voicechat/town/ft_tent
execute if predicate ct:vc/town/head run return run function ct:voicechat/town/head

execute unless score phase game_data matches 4 positioned 9170 70 5053 if predicate ct:vc/town/town_square run return run function ct:voicechat/town/town_square

function ct:voicechat/leave