##
 # dm_end.mcfunction
 # 
 #
 # Created by anpan715.
##

#勝者計算
    execute as @a store result score @s Awpvp.dm_Score run scoreboard players get @s Awpvp.Killcount
    scoreboard players operation @a Awpvp.dm_Score -= dummyplayer Awpvp.dm_WinScore

#勝者発表＆setdisplay
    title @a clear
    execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.5
    title @a title ["",{"text":"\u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"},{"text":" \u52dd\u8005\uff1a","color":"yellow"},{"selector":"@a[scores={Awpvp.dm_Score=0}]","color":"yellow"},{"text":" \u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"}]
    scoreboard objectives setdisplay sidebar Awpvp.Killcount

#リセット処理
    scoreboard players set @a Awpvp.dm_Score 0