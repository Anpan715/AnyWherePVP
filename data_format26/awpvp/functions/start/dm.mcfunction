##
 # dm.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信＆listにkillcountをsetdisplay
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","bold":true,"color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Deathmatch","bold":true,"color":"gold"},{"text":"\n"},{"text":"\u76ee\u6a19\u30ad\u30eb\u6570\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"awpvp_dm_winscore"},"bold":true,"color":"green"}]
scoreboard objectives setdisplay list awpvp_killcount