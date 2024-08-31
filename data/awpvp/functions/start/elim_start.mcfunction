##
 # elim_start.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信＆listにelimlifeをsetdisplay
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","bold":true,"color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Elimination","bold":true,"color":"gold"},{"text":"\n"},{"text":"\u30e9\u30a4\u30d5\u6570\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"awpvp_elim_lifesetting"},"bold":true,"color":"green"},{"text":"\n "}]
scoreboard objectives setdisplay list awpvp_elim_life

#プレイヤーのelimlifeに設定値を挿入
execute store result score @a awpvp_elim_life run scoreboard players get dummyplayer awpvp_elim_lifesetting