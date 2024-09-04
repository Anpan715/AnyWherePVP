##
 # tick_elim.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが1(elim)かつゲーム中なら「eliminated」タグが付与されていないプレイヤー数をelim_remaining_playersに挿入
execute if score dummyplayer Awpvp.Mode matches 1 if score dummyplayer Awpvp.Ingame matches 1 store result score dummyplayer Awpvp.elim_RemPlayers if entity @a[tag=!Awpvp.Eliminated]

#同上の条件かつelim_remaining_playersが1ならゲームを終了
execute if score dummyplayer Awpvp.Mode matches 1 if score dummyplayer Awpvp.Ingame matches 1 if score dummyplayer Awpvp.elim_RemPlayers matches 1 run function awpvp:end/main