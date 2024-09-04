##
 # eliminated.mcfunction
 # 
 #
 # Created by anpan715.
##

#スペクテイターに変更＆death_countをリセット
gamemode spectator @s
scoreboard players set @s awpvp_deathcount 0

#タグ付与＆スコア表示変更
tag @s add awpvp_eliminated
scoreboard players display numberformat @s awpvp_elim_life fixed {"text":"Eliminated!","color": "red","bold": true}

#演出
title @s times 20 60 20
title @s subtitle {"text":"You Are been Eliminated!","color":"gold"}
title @s title {"text":"\u30fc\u30fc \u3042\u306a\u305f\u306f\u6483\u7834\u3055\u308c\u305f\uff01 \u30fc\u30fc","bold":true,"color":"yellow"}
playsound minecraft:entity.zombie_villager.cure ambient @s ~ ~ ~ 0.3