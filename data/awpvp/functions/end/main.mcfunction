##
 # main.mcfunction
 # 
 #
 # Created by anpan715.
##

#ingameを0に
scoreboard players set dummyplayer awpvp_ingame 0

#弱体化・耐性を付与＆体力回復
effect clear @a
effect give @a instant_health 1 1 true
effect give @a saturation 1 1 true
effect give @a weakness 15 4 true
effect give @a resistance 15 4 true

#hubにtp＆アーマースタンドキル
execute at @e[type=armor_stand,tag=awpvp_kitpos,limit=1] run tp @a ~3 ~-5 ~-3
clear @a
gamemode adventure @a
kill @e[type=armor_stand,tag=awpvp_kitpos]

#演出
execute as @a at @s run playsound block.anvil.use ambient @s ~ ~ ~ 1 0.8
title @a times 20 40 20
title @a title ["",{"text":"\u226b\u226b","color":"yellow"},{"text":"\u30b2\u30fc\u30e0\u7d42\u4e86","bold":true,"color":"yellow"},{"text":"\u226a\u226a","color":"yellow"}]
title @a subtitle {"text":"!!GameOver!!","underlined":true,"color":"gold"}
scoreboard objectives setdisplay list awpvp_kit

#各モードごとの終了処理
execute if score dummyplayer awpvp_mode matches 0 run schedule function awpvp:end/dm_end 4s
execute if score dummyplayer awpvp_mode matches 1 run schedule function awpvp:end/elim_end 4s
execute if score dummyplayer awpvp_mode matches 2 run schedule function awpvp:end/ffa_end 4s