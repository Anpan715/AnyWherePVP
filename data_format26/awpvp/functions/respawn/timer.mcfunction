##
 # respawn_timer.mcfunction
 # 
 #
 # Created by anpan715.
##

#ingameが0なら中断
execute if score dummyplayer awpvp_ingame matches 0 run return 1

#death_countを0に＆gamemodeをspectatorに
scoreboard players set @s awpvp_deathcount 0
gamemode spectator @s

#modeが1(elim)かつapvp_elim_lifeが0の場合eliminatedを実行し中断
execute if score dummyplayer awpvp_mode matches 1 if score @s awpvp_elim_life matches 0 run function awpvp:respawn/eliminated
execute if score dummyplayer awpvp_mode matches 1 if score @s awpvp_elim_life matches 0 run return 0

#respawn_timerが-1なら6にset
execute if score @s awpvp_respawntimer matches -1 run scoreboard players set @s awpvp_respawntimer 6

#respawn_timerを1減らしてタイトルを表示
execute as @a[scores={awpvp_respawntimer=1..}] run scoreboard players remove @s awpvp_respawntimer 1
title @a times 0 40 0
execute as @a[scores={awpvp_respawntimer=1..}] run title @s subtitle ["",{"text":"Respawn... ","color":"gold"},{"score":{"name":"@s","objective":"awpvp_respawntimer"},"color":"gold"}]
execute as @a[scores={awpvp_respawntimer=1..}] run title @s title {"text":"\u30fc\u30fc \u3042\u306a\u305f\u306f\u6483\u7834\u3055\u308c\u305f\uff01 \u30fc\u30fc","bold":true,"color":"yellow"}
execute as @a[scores={awpvp_respawntimer=1..}] at @s run playsound ui.button.click player @s ~ ~ ~

#respawn_timerが1以上なら1秒後に自分を再度実行、0ならrespawnを実行
execute as @a[scores={awpvp_respawntimer=1..}] if score @s awpvp_respawntimer matches 1.. run schedule function awpvp:respawn/timer 1s
execute as @a[scores={awpvp_respawntimer=0}] if score @s awpvp_respawntimer matches 0 run function awpvp:respawn/main