##
 # item.mcfunction
 # 
 # Created by anpan715.
 # Referred to Chuzume.
##

#プレイヤーの持っているアイテムのデータを取得
    data modify storage awpvp:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

# 使用中かどうか
    execute if score @s[scores={Awpvp.Using=1..}] Awpvp.UseEnd matches 0 run function awpvp:release_using

# クリックを離したことの検知に使う
    scoreboard players set @s Awpvp.UseEnd 0

# ストレージをリセット
    data remove storage awpvp:context ItemID