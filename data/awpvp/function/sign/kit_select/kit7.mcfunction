##
 # awpvp_kit5.mcfunction.mcfunction
 # 
 #
 # Created by anpan715.
##

scoreboard players set @s Awpvp.Kit 7
title @s actionbar ["",{"text":"Kit7","color":"green"},{"text":"\u3092\u9078\u629e\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
playsound minecraft:ui.button.click block @s
scoreboard players display numberformat @s Awpvp.Kit fixed {"text":"Kit7","color":"blue"}