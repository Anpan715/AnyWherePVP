##
 # tick_dm.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが0(dm)かつゲーム中ならアクションバーに目標スコアn/nと表示
execute if score dummyplayer awpvp_mode matches 0 if score dummyplayer awpvp_ingame matches 1 as @a run title @s actionbar ["",{"text":"\u76ee\u6a19\u30b9\u30b3\u30a2\uff1a","color":"green"},{"score":{"name":"@s","objective":"awpvp_killcount"},"bold":true,"color":"gold"},{"text":"/","color":"green"},{"score":{"name":"dummyplayer","objective":"awpvp_dm_winscore"},"bold":true,"color":"gold"}]

#プレイヤーのkill数がdm_winscoreを上回った際ゲームを終了
execute if score dummyplayer awpvp_mode matches 0 if score dummyplayer awpvp_ingame matches 1 as @a if score @s awpvp_killcount >= dummyplayer awpvp_dm_winscore run function awpvp:end/main