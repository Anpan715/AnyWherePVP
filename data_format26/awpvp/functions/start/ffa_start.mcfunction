##
 # ffa_start.mcfunction
 # 
 #
 # Created by anpan715.
##

#設定をチャットに送信＆listにkillcountをsetdisplay
tellraw @a ["",{"text":"\u4eca\u56de\u306e\u30b2\u30fc\u30e0\u8a2d\u5b9a","color":"blue"},{"text":"\n"},{"text":"\u30e2\u30fc\u30c9\uff1a","color":"gold"},{"text":"Free-for-all","color":"gold"},{"text":"\n"},{"text":"\u5236\u9650\u6642\u9593\uff1a","color":"green"},{"score":{"name":"dummyplayer","objective":"awpvp_ffa_timerdisplay"},"color":"green"},{"text":"\u5206","color":"green"}]
scoreboard objectives setdisplay list Awpvp.Killcount

#timer_settingをffa_timerに挿入
execute store result score dummyplayer Awpvp.ffa_Timer run scoreboard players get dummyplayer Awpvp.ffa_TimerSetting

#timer_settingをBossbarの最大値に適用
execute store result bossbar minecraft:awpvp.ffa_timerbar max run scoreboard players get dummyplayer Awpvp.ffa_TimerSetting

#Bossbarを表示
bossbar set minecraft:awpvp.ffa_timerbar players @a
bossbar set minecraft:awpvp.ffa_timerbar visible true