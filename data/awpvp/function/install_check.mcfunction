##
 # install_check.mcfunction
 # 
 # Thanks for Chuzume.
 # Created by anpan715.
##

#初回のみ実行
    execute unless score dummyplayer Awpvp.InstallMessage matches 1 run function awpvp:install_message
    scoreboard players set dummyplayer Awpvp.InstallMessage 1