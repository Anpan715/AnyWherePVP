##
 # load.mcfunction
 # 
 #
 # Created by anpan715.
##

scoreboard objectives add Awpvp.InstallMessage dummy
execute unless score dummyplayer Awpvp.InstallMessage matches 1 run tellraw @a ["",{"text":"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n"},{"text":"Any Where PVP","color":"gold"},{"text":"\u304c\u6b63\u5e38\u306b\u5c0e\u5165\u3055\u308c\u305f\u3088\uff01\n"},{"text":"\u2026\u305f\u3076\u3093\u554f\u984c\u306a\u3044\u3088\u3002\u30d0\u30b0\u304c\u3042\u3063\u305f\u3089\u6559\u3048\u3066\u306d","color":"gray"},{"text":"\n"},{"text":"By Anpan715","color":"green"},{"text":"\n\n"},{"text":"\u4f7f\u3044\u65b9","color":"light_purple"},{"text":"\n\u540c\u68b1\u306eReadme\u306b\u5f93\u3063\u3066\u4f7f\u3063\u3066\u306d\uff01\n\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"}]
scoreboard players set dummyplayer Awpvp.InstallMessage 1