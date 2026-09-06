execute unless score @s[tag=!universal_vc] vc matches 20 run voicechat join "Big Top" ct
scoreboard players set @s vc 20
execute as @s[tag=requesting_chat] if score @a[tag=storyteller,sort=random,limit=1] vc = @s vc run request_chat off