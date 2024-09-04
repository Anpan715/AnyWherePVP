##
 # reload_awpvp_kitsample.mcfunction
 # 
 #
 # Created by anpan715.
##

#adminroomのawpvp_kitboxをclone
clone ~1 ~5 ~ ~5 ~8 ~ ~1 ~ ~

#演出
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
title @a actionbar ["",{"text":"\u30b5\u30f3\u30d7\u30eb","bold":true,"color":"yellow"},{"text":"\u3092","color":"gold"},{"text":"\u518d\u8aad\u307f\u8fbc\u307f","bold":true,"color":"green"},{"text":"\u3057\u307e\u3057\u305f\u3002","color":"gold"}]