##
 # respawn_timer.mcfunction
 # 
 #
 # Created by anpan715.
##

#ゲーム外なら処理を停止
    execute if score dummyplayer Awpvp.Ingame matches 0 run return 1

#死亡検知用スコアボードを0に＆ゲームモードをスペクテイターに変更
    scoreboard players set @s Awpvp.Deathcount 0
    gamemode spectator @s

#ライフ数が0なら敗北処理＆処理中断
    execute if score dummyplayer Awpvp.Mode matches 1 if score @s Awpvp.elim_Life matches 0 run function awpvp:respawn/eliminated
    execute if score dummyplayer Awpvp.Mode matches 1 if score @s Awpvp.elim_Life matches 0 run return 0

#復活時間タイマーが-1なら6に変更
    execute if score @s Awpvp.RespawnTimer matches -1 run scoreboard players set @s Awpvp.RespawnTimer 6

#復活時間タイマーを1減らしてタイトルを表示
    execute as @a[scores={Awpvp.RespawnTimer=1..}] run scoreboard players remove @s Awpvp.RespawnTimer 1
    title @a times 0 40 0
    execute as @a[scores={Awpvp.RespawnTimer=1..}] run title @s subtitle ["",{"text":"Respawn... ","color":"gold"},{"score":{"name":"@s","objective":"Awpvp.RespawnTimer"},"color":"gold"}]
    execute as @a[scores={Awpvp.RespawnTimer=1..}] run title @s title {"text":"\u30fc\u30fc \u3042\u306a\u305f\u306f\u6483\u7834\u3055\u308c\u305f\uff01 \u30fc\u30fc","color":"yellow"}
    execute as @a[scores={Awpvp.RespawnTimer=1..}] at @s run playsound ui.button.click player @s ~ ~ ~

#復活時間タイマーが1以上なら1秒後に自分を再度実行、0なら復活処理を実行
    execute as @a[scores={Awpvp.RespawnTimer=1..}] if score @s Awpvp.RespawnTimer matches 1.. run schedule function awpvp:respawn/timer 1s
    execute as @a[scores={Awpvp.RespawnTimer=0}] if score @s Awpvp.RespawnTimer matches 0 run function awpvp:respawn/main