##
 # elimination.mcfunction
 # 
 #
 # Created by anpan715.
##

#awpvp_elim_lifeが11以上なら0にリセット、それ以外は1追加
execute if score dummyplayer Awpvp.elim_LifeSetting matches ..11 run scoreboard players add dummyplayer Awpvp.elim_LifeSetting 1
execute if score dummyplayer Awpvp.elim_LifeSetting matches 11.. run scoreboard players set dummyplayer Awpvp.elim_LifeSetting 0

#awpvp_elim_lifeが0なら復活なしの表記、1..なら通常通り表示
playsound minecraft:ui.button.click block @a
execute if score dummyplayer Awpvp.elim_LifeSetting matches 0 run tellraw @a ["",{"selector":"@s","color":"green"},{"text":"\u304c","color":"gold"},{"text":"Elimination\u306e\u5fa9\u6d3b\u56de\u6570","color":"yellow"},{"text":"\u3092","color":"gold"},{"text":"\u5fa9\u6d3b\u306a\u3057","color":"green"},{"text":"\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
execute if score dummyplayer Awpvp.elim_LifeSetting matches 0 run data merge block ~ ~ ~ {front_text:{color:"orange",has_glowing_text:1b,messages:['{"text":""}','{"text":"復活回数を設定","underlined":true,"clickEvent":{"action":"run_command","value":"/function awpvp:sign/mode_setting/elimination_life"}}','[{"text":"現在："},{"text":"復活なし","color":"green"}]','{"text":""}']}}
execute if score dummyplayer Awpvp.elim_LifeSetting matches 0 run return 0

tellraw @a ["",{"selector":"@s","color":"green"},{"text":"\u304c","color":"gold"},{"text":"Elimination\u306e\u5fa9\u6d3b\u56de\u6570","color":"yellow"},{"text":"\u3092","color":"gold"},{"score":{"name":"dummyplayer","objective":"Awpvp.elim_LifeSetting"},"color":"green"},{"text":"\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
data merge block ~ ~ ~ {front_text:{color:"orange",has_glowing_text:1b,messages:['{"text":""}','{"text":"復活回数を変更","underlined":true,"clickEvent":{"action":"run_command","value":"/function awpvp:sign/mode_setting/elimination_life"}}','[{"text":"現在："},{"score":{"name":"dummyplayer","objective":"Awpvp.elim_LifeSetting"},"color":"green"}]','{"text":""}']}}