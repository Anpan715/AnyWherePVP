##
 # ffa_timertick.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが2(FFA)の時かつゲーム中ならばタイマーを1減らす＆タイマーをボスバーに挿入
execute if score dummyplayer awpvp_mode matches 2 if score dummyplayer awpvp_ingame matches 1 run scoreboard players remove dummyplayer awpvp_ffa_timer 1
execute if score dummyplayer awpvp_mode matches 2 if score dummyplayer awpvp_ingame matches 1 store result bossbar awpvp_ffa_timerbar value run scoreboard players get dummyplayer awpvp_ffa_timer

#同上の条件かつタイマーが0ならゲームを終了
execute if score dummyplayer awpvp_mode matches 2 if score dummyplayer awpvp_ingame matches 1 if score dummyplayer awpvp_ffa_timer matches 0 run function awpvp:end/main