##
 # spec0.mcfunction
 # 
 #
 # Created by anpan715.
##

#観戦選択
    scoreboard players set @s Awpvp.Kit 0

#演出
    title @s actionbar ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"\u89b3\u6226\u8005","color":"gray"},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002"}]
    playsound minecraft:ui.button.click block @s
    scoreboard players display numberformat @s Awpvp.Kit fixed {"text":"\u89b3\u6226\u8005","color":"gray"}