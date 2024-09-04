##
 # using_item.mcfunction
 # 
 # Created by anpan715.
 # Referred to Chuzume.
##

# アイテム使用時スコア増やす
    scoreboard players add @s Awpvp.Using 1

# 使用中
    scoreboard players set @s Awpvp.UseEnd 1

# リセット
    advancement revoke @s only awpvp:using_item