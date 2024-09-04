##
 # elim.mcfunction
 # 
 #
 # Created by anpan715.
##

#敗北タグが付与されていないプレイヤー数をelim_remaining_playersに挿入
    execute if score dummyplayer Awpvp.Mode matches 1 if score dummyplayer Awpvp.Ingame matches 1 store result score dummyplayer Awpvp.elim_RemPlayers if entity @a[tag=!Awpvp.Eliminated]

#残りプレイヤー数が1ならゲームを終了
    execute if score dummyplayer Awpvp.Mode matches 1 if score dummyplayer Awpvp.Ingame matches 1 if score dummyplayer Awpvp.elim_RemPlayers matches 1 run function awpvp:end/main