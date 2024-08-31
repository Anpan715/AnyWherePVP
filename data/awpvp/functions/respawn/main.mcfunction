##
 # respawn.mcfunction
 # 
 #
 # Created by anpan715.
##

#modeが1(elim)ならapvp_elim_lifeを1減らす
execute if score dummyplayer awpvp_mode matches 1 run scoreboard players remove @s awpvp_elim_life 1

#アイテムを再配布
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=1}] run function awpvp:start/give_kit/kit1
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=2}] run function awpvp:start/give_kit/kit2
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=3}] run function awpvp:start/give_kit/kit3
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=4}] run function awpvp:start/give_kit/kit4
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=5}] run function awpvp:start/give_kit/kit5
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=6}] run function awpvp:start/give_kit/kit6
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=7}] run function awpvp:start/give_kit/kit7
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=8}] run function awpvp:start/give_kit/kit8
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=9}] run function awpvp:start/give_kit/kit9
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @s[scores={awpvp_kit=10}] run function awpvp:start/give_kit/kit10

#gamemodeをadventureに＆respawn_timerを-1にset
gamemode adventure @s
scoreboard players set @s awpvp_respawntimer -1

#mapに合わせたアーマースタンドにtp
execute if score dummyplayer awpvp_map matches 1 run tp @e[limit=1,sort=random,tag=spawn1,type=armor_stand]
execute if score dummyplayer awpvp_map matches 2 run tp @e[limit=1,sort=random,tag=spawn2,type=armor_stand]
execute if score dummyplayer awpvp_map matches 3 run tp @e[limit=1,sort=random,tag=spawn3,type=armor_stand]
execute if score dummyplayer awpvp_map matches 4 run tp @e[limit=1,sort=random,tag=spawn4,type=armor_stand]