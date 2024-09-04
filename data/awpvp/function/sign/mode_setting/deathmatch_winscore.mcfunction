##
 # deathmatch.mcfunction
 # 
 #
 # Created by anpan715.
##

#目標スコアが31以下なら1追加、以上なら1にリセット
    execute if score dummyplayer Awpvp.dm_WinScore matches ..31 run scoreboard players add dummyplayer Awpvp.dm_WinScore 1
    execute if score dummyplayer Awpvp.dm_WinScore matches 31.. run scoreboard players set dummyplayer Awpvp.dm_WinScore 1

#演出
    playsound minecraft:ui.button.click block @a
    tellraw @a ["",{"selector":"@s","color":"green"},{"text":"\u304c","color":"gold"},{"text":"Deathmatch\u306e\u76ee\u6a19\u30b9\u30b3\u30a2","color":"yellow"},{"text":"\u3092","color":"gold"},{"score":{"name":"dummyplayer","objective":"Awpvp.dm_WinScore"},"color":"green"},{"text":"\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\u3002","color":"gold"}]
    data merge block ~ ~ ~ {front_text:{color:"orange",has_glowing_text:1b,messages:['{"text":""}','{"text":"目標スコアを設定","underlined":true,"clickEvent":{"action":"run_command","value":"/function awpvp:sign/mode_setting/deathmatch_winscore"}}','[{"text":"現在："},{"score":{"name":"dummyplayer","objective":"Awpvp.dm_WinScore"},"color":"green"}]','{"text":""}']}}