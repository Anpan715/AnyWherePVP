##
 # ffa_timertick.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが2(FFA)の時かつゲーム中ならばタイマーを1減らす＆タイマーをボスバーに挿入
execute if score dummyplayer Awpvp.Mode matches 2 if score dummyplayer Awpvp.Ingame matches 1 run scoreboard players remove dummyplayer Awpvp.ffa_Timer 1
execute if score dummyplayer Awpvp.Mode matches 2 if score dummyplayer Awpvp.Ingame matches 1 store result bossbar awpvp.ffa_timerbar value run scoreboard players get dummyplayer Awpvp.ffa_Timer

#同上の条件かつタイマーが0ならゲームを終了
execute if score dummyplayer Awpvp.Mode matches 2 if score dummyplayer Awpvp.Ingame matches 1 if score dummyplayer Awpvp.ffa_Timer matches 0 run function awpvp:end/main