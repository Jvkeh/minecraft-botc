scoreboard players set has_initialized game_data 1
tellraw @a [{"text":"Welcome to Ravenswood Bluff! There are just a few more steps before you can play Blood on the Clocktower:"}]
tellraw @a [{"text":" "}]
tellraw @a [{"text":"• ","color":"white"},{"text":"/op ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" from your server console.","color":"white"}]
tellraw @a [{"text":"• ","color":"white"},{"text":"/storyteller add ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" to become a Storyteller.","color":"white"}]
tellraw @a [{"text":" "}]
tellraw @a [{"text":"For instructions on how to Storytell using this pack, ","color":"white",underlined:false},{"text":"click here to view the documentation",underlined:true,color:"blue",click_event:{action:"open_url",url:"https://github.com/Sybillian/minecraft-botc/wiki"}},{"text":". Have fun!",underlined:false,color:white}]