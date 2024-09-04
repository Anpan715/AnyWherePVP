##
 # ffa_end.mcfunction
 # 
 #
 # Created by anpan715.
##

#ボスバーを隠す
    bossbar set minecraft:awpvp.ffa_timerbar visible false

#勝者計算
    execute as @a store result score @s Awpvp.ffa_Score run scoreboard players get @s Awpvp.Killcount
    scoreboard players operation dummyplayer Awpvp.ffa_WinnerScore > @a Awpvp.Killcount
    scoreboard players operation @a Awpvp.ffa_Score -= dummyplayer Awpvp.ffa_WinnerScore

#勝者発表＆setdisplay
    title @a clear
    execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.5
    title @a title ["",{"text":"\u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"},{"text":" \u52dd\u8005\uff1a","color":"yellow"},{"selector":"@a[scores={Awpvp.ffa_Score=0}]","color":"yellow"},{"text":" \u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"}]
    scoreboard objectives setdisplay sidebar Awpvp.Killcount

#リセット処理
    scoreboard players set @a Awpvp.ffa_Score 0
    scoreboard players set dummyplayer Awpvp.ffa_WinnerScore 0