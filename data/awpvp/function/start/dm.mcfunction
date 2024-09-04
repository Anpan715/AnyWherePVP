##
 # dm.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信・キル数をlistに表示
    tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Deathmatch","color":"gold"},{"text":"\n"},{"text":"\u76ee\u6a19\u30ad\u30eb\u6570\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"Awpvp.dm_WinScore"},"color":"green"}]
    scoreboard objectives setdisplay list Awpvp.Killcount