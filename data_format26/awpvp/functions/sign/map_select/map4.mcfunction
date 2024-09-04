##
 # map4.mcfunction
 # 
 #
 # Created by anpan715.
##

scoreboard players set dummyplayer Awpvp.Map 4
tellraw @a ["",{"selector":"@s","color":"green"},{"text":"\u304c","color":"gold"},{"text":"Map4","color":"green"},{"text":"\u3092\u9078\u629e\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
playsound minecraft:ui.button.click block @a