##
 # uninstall.mcfunction
 # 
 #
 # Created by anpan715.
##

#タイマー用ボスバーを削除
    bossbar remove awpvp.ffa_timerbar

#スコアボード削除
    #導入メッセージ用
        scoreboard objectives remove Awpvp.InstallMessage 

    #Kit選択用
        scoreboard objectives remove Awpvp.Kit 

    #マップ選択用
        scoreboard objectives remove Awpvp.Map 

    #モード選択用
        scoreboard objectives remove Awpvp.Mode 

    #死亡検知用
        scoreboard objectives remove Awpvp.Deathcount

    #体力表示用
        scoreboard objectives remove Awpvp.Playerhealth
    #ゲーム中検知用
        scoreboard objectives remove Awpvp.Ingame 

    #プレイヤーキルカウント
        scoreboard objectives remove Awpvp.Killcount 

    #復活タイマー用
        scoreboard objectives remove Awpvp.RespawnTimer 

    #開始タイマー用
        scoreboard objectives remove Awpvp.Timerstart 

    #Dm用勝利キル数・プレイヤーキル数カウント
        scoreboard objectives remove Awpvp.dm_Score 
        scoreboard objectives remove Awpvp.dm_WinScore 

    #Elim用残りプレイヤー数カウント
        scoreboard objectives remove Awpvp.elim_RemPlayers 

    #Elim用ライフ数
        scoreboard objectives remove Awpvp.elim_LifeSetting 
        scoreboard objectives remove Awpvp.elim_Life 

    #FFA用プレイヤーキル数・勝者キル数
        scoreboard objectives remove Awpvp.ffa_Score 
        scoreboard objectives remove Awpvp.ffa_WinnerScore 

    #FFA用タイマー
        scoreboard objectives remove Awpvp.ffa_Timer 
        scoreboard objectives remove Awpvp.ffa_TimerSetting 
        scoreboard objectives remove Awpvp.ffa_TimerDisplay 