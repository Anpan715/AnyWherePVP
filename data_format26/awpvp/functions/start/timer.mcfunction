#カウントダウン
scoreboard players remove dummyplayer awpvp_timerstart 1

title @a clear
title @a times 0 40 0
title @a title {"score":{"name":"dummyplayer","objective":"awpvp_timerstart"},"color":"gold"}
execute if score dummyplayer awpvp_timerstart matches 1.. as @a at @a run playsound minecraft:block.anvil.place ambient @s

<<<<<<< HEAD:data_format26/awpvp/functions/start/timer_start.mcfunction
execute if score dummyplayer awpvp_timerstart matches 1.. run schedule function awpvp:start/timer_start 1s
execute if score dummyplayer awpvp_timerstart matches 1.. run return 1
=======
execute if score dummyplayer Awpvp.Timerstart matches 1.. run schedule function awpvp:start/timer 1s
execute if score dummyplayer Awpvp.Timerstart matches 1.. run return 1
>>>>>>> 0aaed1d82cbb9b41eadb4b0bada7ad6077e7e50c:data_format26/awpvp/functions/start/timer.mcfunction

#アイテム付与
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=1}] run function awpvp:start/give_kit/kit1
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=2}] run function awpvp:start/give_kit/kit2
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=3}] run function awpvp:start/give_kit/kit3
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=4}] run function awpvp:start/give_kit/kit4
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=5}] run function awpvp:start/give_kit/kit5
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=6}] run function awpvp:start/give_kit/kit6
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=7}] run function awpvp:start/give_kit/kit7
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=8}] run function awpvp:start/give_kit/kit8
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=9}] run function awpvp:start/give_kit/kit9
execute at @e[type=armor_stand,tag=awpvp_kitpos] as @a[scores={awpvp_kit=10}] run function awpvp:start/give_kit/kit10

#弱体化・耐性を付与＆体力回復
effect clear @a
effect give @a instant_health 1 1 true
effect give @a saturation 1 1 true
effect give @a weakness 5 4 true
effect give @a resistance 5 4 true

#ゲームモード変更＆tp
gamemode adventure @a[scores={awpvp_kit=1..10}]
gamemode spectator @a[scores={awpvp_kit=0}]
scoreboard players set @a awpvp_respawntimer -1
execute as @a if score dummyplayer awpvp_map matches 1 run tp @e[limit=1,sort=random,tag=spawn1,type=armor_stand]
execute as @a if score dummyplayer awpvp_map matches 2 run tp @e[limit=1,sort=random,tag=spawn2,type=armor_stand]
execute as @a if score dummyplayer awpvp_map matches 3 run tp @e[limit=1,sort=random,tag=spawn3,type=armor_stand]
execute as @a if score dummyplayer awpvp_map matches 4 run tp @e[limit=1,sort=random,tag=spawn4,type=armor_stand]

#各モードごとの開始処理＆ingameを1に
<<<<<<< HEAD:data_format26/awpvp/functions/start/timer_start.mcfunction
scoreboard players set dummyplayer awpvp_ingame 1
execute if score dummyplayer awpvp_mode matches 0 run function awpvp:start/dm_start
execute if score dummyplayer awpvp_mode matches 1 run function awpvp:start/elim_start
execute if score dummyplayer awpvp_mode matches 2 run function awpvp:start/ffa_start

#開始タイトルと効果音
function awpvp:start/gamestart_title
function awpvp:start/gamesetting_tellraw
=======
scoreboard players set dummyplayer Awpvp.Ingame 1
execute if score dummyplayer Awpvp.Mode matches 0 run function awpvp:start/dm
execute if score dummyplayer Awpvp.Mode matches 1 run function awpvp:start/elim
execute if score dummyplayer Awpvp.Mode matches 2 run function awpvp:start/ffa

#開始タイトルと効果音
function awpvp:start/title
>>>>>>> 0aaed1d82cbb9b41eadb4b0bada7ad6077e7e50c:data_format26/awpvp/functions/start/timer.mcfunction
execute as @a at @a run playsound entity.ender_dragon.growl ambient @s