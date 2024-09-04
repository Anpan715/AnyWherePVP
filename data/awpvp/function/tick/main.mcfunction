##
 # tick.mcfunction
 # 
 # Created by anpan715.
 # Referred to Chuzume.
##

#プレイヤーとして実行
    execute as @a at @s run function awpvp:tick/items

#プレイヤーが死亡したらそのプレイヤーとしてrespawn_timerを実行
    execute as @a[scores={Awpvp.Deathcount=1..}] run function awpvp:respawn/timer

#アンカー設置カーソル
    execute as @e[type=item_display,tag=Awpvp.AnchorCursor] at @s unless entity @n[type=marker,tag=Awpvp.CursorMarker,distance=..0.1] run kill @s
    kill @e[type=marker,tag=Awpvp.CursorMarker]