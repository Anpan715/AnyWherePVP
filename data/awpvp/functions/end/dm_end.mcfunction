##
 # dm_end.mcfunction
 # 
 #
 # Created by anpan715.
##

#勝者計算
execute as @a store result score @s awpvp_dm_score run scoreboard players get @s awpvp_killcount
scoreboard players operation @a awpvp_dm_score -= dummyplayer awpvp_dm_winscore

#勝者発表＆setdisplay
title @a clear
execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.5
title @a title ["",{"text":"\u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"},{"text":" \u52dd\u8005\uff1a","color":"yellow"},{"selector":"@a[scores={awpvp_dm_score=0}]","color":"yellow"},{"text":" \u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"}]
scoreboard objectives setdisplay sidebar awpvp_killcount

#リセット処理
scoreboard players set @a awpvp_dm_score 0