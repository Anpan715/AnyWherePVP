##
 # setup.mcfunction
 # 
 #
 # Created by anpan715.
##

#create_scoreboardを実行
function awpvp:create_scoreboard

#即時リスポーンをtureに
gamerule doImmediateRespawn true

#bossbarを作成し設定
bossbar add awpvp_ffa_timerbar "残り時間" 
bossbar set awpvp_ffa_timerbar visible false
bossbar set awpvp_ffa_timerbar style notched_20
bossbar set awpvp_ffa_timerbar color green

#メッセージを送信
tellraw @a ["",{"text":"Any where pvp\u306e\u3054\u5229\u7528\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3059\uff01","bold":true,"underlined":true,"color":"yellow"},{"text":"\n"},{"text":"Hub\u3092\u751f\u6210\u3059\u308b\u306b\u3042\u305f\u3063\u3066\u73fe\u5728\u5730\u304b\u3089","color":"gold"},{"text":"X+","bold":true,"color":"red"},{"text":"Z+","bold":true,"color":"blue"},{"text":"\u5074\u306b","color":"gold"},{"text":"\n"},{"text":"\u5e458","bold":true,"color":"red"},{"text":" \u9ad8\u305510","bold":true,"color":"green"},{"text":" \u5965\u884c7","bold":true,"color":"blue"},{"text":"\u306e\u5efa\u9020\u7269\u304c\u751f\u6210\u3055\u308c\u307e\u3059\u3002","color":"gold"},{"text":"\n"},{"text":"\u5143\u306e\u30d6\u30ed\u30c3\u30af\u306f\u4e0a\u66f8\u304d","bold":true,"color":"red"},{"text":"\u3055\u308c\u308b\u305f\u3081\u3001\n","color":"gold"},{"text":"\u5fc5\u305a\u5468\u56f2\u3092\u78ba\u8a8d\u3057\u3066\u304b\u3089","bold":true,"color":"gold"},{"text":"\u3053\u3061\u3089","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"suggest_command","value":"/place template awpvp:awpvp/hub ~1 ~ ~1"}},{"text":"\u3092\u30af\u30ea\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"gold"}]


#スコアボード作成
scoreboard objectives add awpvp_kit dummy
scoreboard objectives setdisplay list awpvp_kit

scoreboard objectives add awpvp_map dummy
scoreboard players set dummyplayer awpvp_map 1

scoreboard objectives add awpvp_deathcount deathCount

scoreboard objectives add awpvp_playerhealth health {"text":"❤","color":"red"}
scoreboard objectives modify awpvp_playerhealth rendertype hearts
scoreboard objectives modify awpvp_playerhealth numberformat styled {"color":"red","bold":true}
scoreboard objectives setdisplay below_name awpvp_playerhealth

scoreboard objectives add awpvp_ingame dummy
scoreboard players set dummyplayer awpvp_ingame 0

scoreboard objectives add awpvp_killcount playerKillCount {"text":"キル数","color":"green","bold":true}
scoreboard objectives modify awpvp_killcount numberformat styled {"color":"gold","bold":true}

scoreboard objectives add awpvp_respawntimer dummy

scoreboard objectives add awpvp_timerstart dummy
scoreboard players set dummyplayer awpvp_timerstart 7

scoreboard objectives add awpvp_dm_score dummy
scoreboard objectives add awpvp_dm_winscore dummy
scoreboard players set dummyplayer awpvp_dm_winscore 10

scoreboard objectives add awpvp_elim_remplayers dummy
scoreboard objectives add awpvp_elim_lifesetting dummy
scoreboard objectives add awpvp_elim_life dummy {"text":"残り復活回数","color":"green","bold":true}
scoreboard players set dummyplayer awpvp_elim_lifesetting 0
scoreboard objectives modify awpvp_elim_life numberformat styled {"color":"blue","bold":true}

scoreboard objectives add awpvp_ffa_score dummy
scoreboard objectives add awpvp_ffa_winnerscore dummy

<<<<<<< HEAD
scoreboard objectives add awpvp_ffa_timer dummy
scoreboard objectives add awpvp_ffa_timersetting dummy
scoreboard objectives add awpvp_ffa_timerdisplay dummy
scoreboard players set dummyplayer awpvp_ffa_timersetting 3600
scoreboard players set dummyplayer awpvp_ffa_timerdisplay 3
=======
scoreboard objectives add Awpvp.ffa_Timer dummy
scoreboard objectives add Awpvp.ffa_TimerSetting dummy
scoreboard objectives add Awpvp.ffa_TimerDisplay dummy
scoreboard players set dummyplayer Awpvp.ffa_TimerSetting 3600
scoreboard players set dummyplayer Awpvp.ffa_TimerDisplay 3
>>>>>>> 0aaed1d82cbb9b41eadb4b0bada7ad6077e7e50c

scoreboard objectives add awpvp_mode dummy
scoreboard players set dummyplayer awpvp_mode 0