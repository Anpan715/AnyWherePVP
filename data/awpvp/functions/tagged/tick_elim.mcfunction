##
 # tick_elim.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが1(elim)かつゲーム中なら「eliminated」タグが付与されていないプレイヤー数をelim_remaining_playersに挿入
execute if score dummyplayer awpvp_mode matches 1 if score dummyplayer awpvp_ingame matches 1 store result score dummyplayer awpvp_elim_remplayers if entity @a[tag=!awpvp_eliminated]

#同上の条件かつelim_remaining_playersが1ならゲームを終了
execute if score dummyplayer awpvp_mode matches 1 if score dummyplayer awpvp_ingame matches 1 if score dummyplayer awpvp_elim_remplayers matches 1 run function awpvp:end/main