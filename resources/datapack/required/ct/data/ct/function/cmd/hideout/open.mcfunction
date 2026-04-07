playsound minecraft:block.copper_door.open block @a 105 63 -6 1 1 1
setblock 105 63 -6 minecraft:copper_door[facing=west,open=true]
setblock 105 63 -7 minecraft:copper_door[facing=west,open=true]
schedule function ct:cmd/hideout/close 1.5s