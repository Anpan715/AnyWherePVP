##
 # elim_start.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Elimination","color":"gold"},{"text":"\n"},{"text":"\u30e9\u30a4\u30d5\u6570\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"Awpvp.elim_LifeSetting"},"color":"green"},{"text":"\n "}]

scoreboard objectives setdisplay list Awpvp.elim_Life

#プレイヤーのライフ数に設定値を挿入
execute store result score @a Awpvp.elim_Life run scoreboard players get dummyplayer Awpvp.elim_LifeSetting