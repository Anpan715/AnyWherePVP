##
 # awpvp_kit2.mcfunction
 # 
 #
 # Created by anpan715.
##

scoreboard players set @s awpvp_kit 2
title @s actionbar ["",{"text":"Kit2","bold":true,"color":"green"},{"text":"\u3092\u9078\u629e\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
playsound minecraft:ui.button.click block @s
scoreboard players display numberformat @s awpvp_kit fixed {"text":"Kit2","bold":true,"color":"blue"}