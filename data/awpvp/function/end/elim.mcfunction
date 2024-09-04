##
 # elim_end.mcfunction
 # 
 #
 # Created by anpan715.
##

#勝者発表
    title @a clear
    execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.5
    title @a title ["",{"text":"\u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"},{"text":" \u52dd\u8005\uff1a","color":"yellow"},{"selector":"@a[tag=!Awpvp.Eliminated]","color":"yellow"},{"text":" \u30fc\u30fc\u30fc","obfuscated":true,"color":"yellow"}]
    scoreboard objectives setdisplay sidebar Awpvp.elim_Life

#リセット処理
    tag @a remove Awpvp.Eliminated