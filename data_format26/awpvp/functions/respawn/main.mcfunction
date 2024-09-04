##
 # respawn.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが1(elim)ならapvp_elim_lifeを1減らす
execute if score dummyplayer Awpvp.Mode matches 1 run scoreboard players remove @s Awpvp.elim_Life 1

#アイテムを再配布
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=1}] run function awpvp:start/give_kit/kit1
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=2}] run function awpvp:start/give_kit/kit2
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=3}] run function awpvp:start/give_kit/kit3
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=4}] run function awpvp:start/give_kit/kit4
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=5}] run function awpvp:start/give_kit/kit5
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=6}] run function awpvp:start/give_kit/kit6
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=7}] run function awpvp:start/give_kit/kit7
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=8}] run function awpvp:start/give_kit/kit8
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=9}] run function awpvp:start/give_kit/kit9
execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @s[scores={Awpvp.Kit=10}] run function awpvp:start/give_kit/kit10

#gamemodeをadventureに＆respawn_timerを-1にset
gamemode adventure @s
scoreboard players set @s Awpvp.RespawnTimer -1

#mapに合わせたアーマースタンドにtp
execute if score dummyplayer Awpvp.Map matches 1 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor1,type=armor_stand]
execute if score dummyplayer Awpvp.Map matches 2 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor2,type=armor_stand]
execute if score dummyplayer Awpvp.Map matches 3 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor3,type=armor_stand]
execute if score dummyplayer Awpvp.Map matches 4 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor4,type=armor_stand]