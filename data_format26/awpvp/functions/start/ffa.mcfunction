##
 # ffa.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信＆listにkillcountをsetdisplay
<<<<<<< HEAD:data_format26/awpvp/functions/start/ffa_start.mcfunction
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","bold":true,"color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Free-for-all","bold":true,"color":"gold"},{"text":"\n"},{"text":"\u5236\u9650\u6642\u9593\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"awpvp_ffa_timerdisplay"},"bold":true,"color":"green"},{"text":"\u5206","bold":true,"color":"green"}]
scoreboard objectives setdisplay list awpvp_killcount
=======
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Free-for-all","color":"gold"},{"text":"\n"},{"text":"\u5236\u9650\u6642\u9593\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"Awpvp.ffa_TimerDisplay"},"color":"green"},{"text":"\u5206","color":"green"}]
scoreboard objectives setdisplay list Awpvp.Killcount
>>>>>>> 0aaed1d82cbb9b41eadb4b0bada7ad6077e7e50c:data_format26/awpvp/functions/start/ffa.mcfunction

#timer_settingをffa_timerに挿入
execute store result score dummyplayer awpvp_ffa_timer run scoreboard players get dummyplayer awpvp_ffa_timersetting

#timer_settingをBossbarの最大値に適用
execute store result bossbar minecraft:awpvp_ffa_timerbar max run scoreboard players get dummyplayer awpvp_ffa_timersetting

#Bossbarを表示
bossbar set minecraft:awpvp_ffa_timerbar players @a
bossbar set minecraft:awpvp_ffa_timerbar visible true