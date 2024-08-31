##
 # ffa.mcfunction
 # 
 #
 # Created by anpan715.
##

execute if score dummyplayer awpvp_ffa_timersetting matches ..10 run scoreboard players add dummyplayer awpvp_ffa_timersetting 1200
execute if score dummyplayer awpvp_ffa_timerdisplay matches ..10 run scoreboard players add dummyplayer awpvp_ffa_timerdisplay 1

execute if score dummyplayer awpvp_ffa_timersetting matches 11.. run scoreboard players set dummyplayer awpvp_ffa_timersetting 1200
execute if score dummyplayer awpvp_ffa_timerdisplay matches 11.. run scoreboard players set dummyplayer awpvp_ffa_timerdisplay 1

playsound minecraft:ui.button.click block @a
tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":"\u304c","color":"gold"},{"text":"FFA\u306e\u5236\u9650\u6642\u9593","color":"yellow"},{"text":"\u3092","color":"gold"},{"score":{"name":"dummyplayer","objective":"awpvp_ffa_timerdisplay"},"bold":true,"color":"green"},{"text":"\u5206\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\u3002","color":"gold"}]

data merge block ~ ~ ~ {front_text:{color:"orange",has_glowing_text:1b,messages:['{"text":""}','{"text":"制限時間を変更","underlined":true,"clickEvent":{"action":"run_command","value":"function awpvp:sign/mode_setting/ffa_timer"}}','[{"text":"現在："},{"score":{"name":"dummyplayer","objective":"awpvp_ffa_timerdisplay"},"color":"green"}]','{"text":""}']}}