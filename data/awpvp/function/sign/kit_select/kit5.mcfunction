##
 # awpvp_kit5.mcfunction.mcfunction
 # 
 #
 # Created by anpan715.
##

#Kit選択
    scoreboard players set @s Awpvp.Kit 5

#演出
    title @s actionbar ["",{"text":"Kit5","color":"green"},{"text":"\u3092\u9078\u629e\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
    playsound minecraft:ui.button.click block @s
    scoreboard players display numberformat @s Awpvp.Kit fixed {"text":"Kit5","color":"blue"}