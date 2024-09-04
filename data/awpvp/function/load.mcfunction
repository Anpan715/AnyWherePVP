##
 # load.mcfunction
 # 
 #
 # Created by anpan715.
##

#タイマー用ボスバーを設定
    bossbar add awpvp.ffa_timerbar "残り時間" 
    bossbar set awpvp.ffa_timerbar visible false
    bossbar set awpvp.ffa_timerbar style notched_20
    bossbar set awpvp.ffa_timerbar color green

#スコアボード作成
    #導入メッセージ用
        scoreboard objectives add Awpvp.InstallMessage dummy

    #Kit選択用
        scoreboard objectives add Awpvp.Kit dummy
        scoreboard objectives setdisplay list Awpvp.Kit

    #マップ選択用
        scoreboard objectives add Awpvp.Map dummy
        scoreboard players set dummyplayer Awpvp.Map 1
        scoreboard players set @a Awpvp.Map 1

    #モード選択用
        scoreboard objectives add Awpvp.Mode dummy
        scoreboard players set dummyplayer Awpvp.Mode 0

    #死亡検知用
        scoreboard objectives add Awpvp.Deathcount deathCount

    #体力表示用
        scoreboard objectives add Awpvp.Playerhealth health {"text":"❤","color":"red"}
        scoreboard objectives modify Awpvp.Playerhealth rendertype hearts
        scoreboard objectives modify Awpvp.Playerhealth numberformat styled {"color":"red"}
        scoreboard objectives setdisplay below_name Awpvp.Playerhealth

    #ゲーム中検知用
        scoreboard objectives add Awpvp.Ingame dummy
        scoreboard players set dummyplayer Awpvp.Ingame 0

    #プレイヤーキルカウント
        scoreboard objectives add Awpvp.Killcount playerKillCount {"text":"キル数","color":"green"}
        scoreboard objectives modify Awpvp.Killcount numberformat styled {"color":"gold"}

    #復活タイマー用
        scoreboard objectives add Awpvp.RespawnTimer dummy

    #開始タイマー用
        scoreboard objectives add Awpvp.Timerstart dummy
        scoreboard players set dummyplayer Awpvp.Timerstart 7

    #Dm用勝利キル数・プレイヤーキル数カウント
        scoreboard objectives add Awpvp.dm_Score dummy
        scoreboard objectives add Awpvp.dm_WinScore dummy
        scoreboard players set dummyplayer Awpvp.dm_WinScore 10

    #Elim用残りプレイヤー数カウント
        scoreboard objectives add Awpvp.elim_RemPlayers dummy

    #Elim用ライフ数
        scoreboard objectives add Awpvp.elim_LifeSetting dummy
        scoreboard objectives add Awpvp.elim_Life dummy {"text":"残り復活回数","color":"green"}
        scoreboard players set dummyplayer Awpvp.elim_LifeSetting 0
        scoreboard objectives modify Awpvp.elim_Life numberformat styled {"color":"blue"}

    #FFA用プレイヤーキル数・勝者キル数
        scoreboard objectives add Awpvp.ffa_Score dummy
        scoreboard objectives add Awpvp.ffa_WinnerScore dummy

    #FFA用タイマー
        scoreboard objectives add Awpvp.ffa_Timer dummy
        scoreboard objectives add Awpvp.ffa_TimerSetting dummy
        scoreboard objectives add Awpvp.ffa_TimerDisplay dummy
        scoreboard players set dummyplayer Awpvp.ffa_TimerSetting 3600
        scoreboard players set dummyplayer Awpvp.ffa_TimerDisplay 3
