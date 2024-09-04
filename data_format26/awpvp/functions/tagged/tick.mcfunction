##
 # tick.mcfunction
 # 
 #
 # Created by anpan715.
##

#プレイヤーが死亡したらそのプレイヤーとしてrespawn_timerを実行
execute as @a[scores={Awpvp.Deathcount=1..}] run function awpvp:respawn/timer