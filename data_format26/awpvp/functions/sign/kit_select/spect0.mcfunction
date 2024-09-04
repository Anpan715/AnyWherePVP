##
 # spec0.mcfunction
 # 
 #
 # Created by anpan715.
##

scoreboard players set @s awpvp_kit 0
title @s actionbar ["",{"text":"\u3042\u306a\u305f\u306f","bold":true},{"text":"\u89b3\u6226\u8005","bold":true,"color":"gray"},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002","bold":true}]
playsound minecraft:ui.button.click block @s
scoreboard players display numberformat @s awpvp_kit fixed {"text":"\u89b3\u6226\u8005","bold":true,"color":"gray"}