##
 # setup.mcfunction
 # 
 #
 # Created by anpan715.
##

#即時リスポーンをtureに
gamerule doImmediateRespawn true

#bossbarを作成し設定
bossbar add awpvp.ffa_timerbar "残り時間" 
bossbar set awpvp.ffa_timerbar visible false
bossbar set awpvp.ffa_timerbar style notched_20
bossbar set awpvp.ffa_timerbar color green

#メッセージを送信
tellraw @a ["",{"text":"Any where pvp\u306e\u3054\u5229\u7528\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3059\uff01","underlined":true,"color":"yellow"},{"text":"\n"},{"text":"Hub\u3092\u751f\u6210\u3059\u308b\u306b\u3042\u305f\u3063\u3066\u73fe\u5728\u5730\u304b\u3089","color":"gold"},{"text":"X+","color":"red"},{"text":"Z+","color":"blue"},{"text":"\u5074\u306b","color":"gold"},{"text":"\n"},{"text":"\u5e458","color":"red"},{"text":" \u9ad8\u305510","color":"green"},{"text":" \u5965\u884c7","color":"blue"},{"text":"\u306e\u5efa\u9020\u7269\u304c\u751f\u6210\u3055\u308c\u307e\u3059\u3002","color":"gold"},{"text":"\n"},{"text":"\u5143\u306e\u30d6\u30ed\u30c3\u30af\u306f\u4e0a\u66f8\u304d","color":"red"},{"text":"\u3055\u308c\u308b\u305f\u3081\u3001\n","color":"gold"},{"text":"\u5fc5\u305a\u5468\u56f2\u3092\u78ba\u8a8d\u3057\u3066\u304b\u3089","color":"gold"},{"text":"\u3053\u3061\u3089","underlined":true,"color":"blue","clickEvent":{"action":"suggest_command","value":"/place template awpvp:awpvp/hub ~1 ~ ~1"}},{"text":"\u3092\u30af\u30ea\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"gold"}]


#スコアボード作成
scoreboard objectives add Awpvp.Kit dummy
scoreboard objectives setdisplay list Awpvp.Kit

scoreboard objectives add Awpvp.Map dummy
scoreboard players set dummyplayer Awpvp.Map 1

scoreboard objectives add Awpvp.Deathcount deathCount

scoreboard objectives add Awpvp.Playerhealth health {"text":"❤","color":"red"}
scoreboard objectives modify Awpvp.Playerhealth rendertype hearts
scoreboard objectives modify Awpvp.Playerhealth numberformat styled {"color":"red"}
scoreboard objectives setdisplay below_name Awpvp.Playerhealth

scoreboard objectives add Awpvp.Ingame dummy
scoreboard players set dummyplayer Awpvp.Ingame 0

scoreboard objectives add Awpvp.Killcount playerKillCount {"text":"キル数","color":"green"}
scoreboard objectives modify Awpvp.Killcount numberformat styled {"color":"gold"}

scoreboard objectives add Awpvp.RespawnTimer dummy

scoreboard objectives add Awpvp.Timerstart dummy
scoreboard players set dummyplayer Awpvp.Timerstart 7

scoreboard objectives add Awpvp.dm_Score dummy
scoreboard objectives add Awpvp.dm_WinScore dummy
scoreboard players set dummyplayer Awpvp.dm_WinScore 10

scoreboard objectives add Awpvp.elim_RemPlayers dummy
scoreboard objectives add Awpvp.elim_LifeSetting dummy
scoreboard objectives add Awpvp.elim_Life dummy {"text":"残り復活回数","color":"green"}
scoreboard players set dummyplayer Awpvp.elim_LifeSetting 0
scoreboard objectives modify Awpvp.elim_Life numberformat styled {"color":"blue"}

scoreboard objectives add Awpvp.ffa_Score dummy
scoreboard objectives add Awpvp.ffa_WinnerScore dummy

scoreboard objectives add Awpvp.ffa_Timer dummy
scoreboard objectives add Awpvp.ffa_TimerSetting dummy
scoreboard objectives add awpvp_ffa_timerdisplay dummy
scoreboard players set dummyplayer Awpvp.ffa_TimerSetting 3600
scoreboard players set dummyplayer awpvp_ffa_timerdisplay 3

scoreboard objectives add Awpvp.Mode dummy
scoreboard players set dummyplayer Awpvp.Mode 0