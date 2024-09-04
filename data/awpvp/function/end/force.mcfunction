##
 # force_end.mcfunction
 # 
 #
 # Created by anpan715.
##

#ffa_timerを停止
    scoreboard players set dummyplayer Awpvp.ffa_Timer -1

#end/mainを実行＆強制終了通知
    function awpvp:end/main
    tellraw @a ["",{"text":"\u8a66\u5408\u304c","color":"red"},{"selector":"@s","color":"red"},{"text":"\u306b\u3088\u3063\u3066\u5f37\u5236\u7d42\u4e86\u3055\u308c\u307e\u3057\u305f\u3002","color":"red"}]