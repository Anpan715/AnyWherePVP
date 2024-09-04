##
 # timer.mcfunction
 # 
 #
 # Created by anpan715.
##

#カウントダウン
    scoreboard players remove dummyplayer Awpvp.Timerstart 1
    title @a clear
    title @a times 0 40 0
    title @a title {"score":{"name":"dummyplayer","objective":"Awpvp.Timerstart"},"color":"gold"}
    execute if score dummyplayer Awpvp.Timerstart matches 1.. as @a at @a run playsound minecraft:block.anvil.place ambient @s

#再起と中断
    execute if score dummyplayer Awpvp.Timerstart matches 1.. run schedule function awpvp:start/timer 1s
    execute if score dummyplayer Awpvp.Timerstart matches 1.. run return 1

#アイテム付与
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=1}] run function awpvp:start/give_kit/kit1
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=2}] run function awpvp:start/give_kit/kit2
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=3}] run function awpvp:start/give_kit/kit3
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=4}] run function awpvp:start/give_kit/kit4
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=5}] run function awpvp:start/give_kit/kit5
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=6}] run function awpvp:start/give_kit/kit6
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=7}] run function awpvp:start/give_kit/kit7
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=8}] run function awpvp:start/give_kit/kit8
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=9}] run function awpvp:start/give_kit/kit9
    execute at @e[type=armor_stand,tag=Awpvp.KitPos] as @a[scores={Awpvp.Kit=10}] run function awpvp:start/give_kit/kit10

#弱体化・耐性を付与＆体力回復
    effect clear @a
    effect give @a instant_health 1 1 true
    effect give @a saturation 1 1 true
    effect give @a weakness 5 4 true
    effect give @a resistance 5 4 true

#ゲームモード変更＆tp
    gamemode adventure @a[scores={Awpvp.Kit=1..10}]
    gamemode spectator @a[scores={Awpvp.Kit=0}]
    scoreboard players set @a Awpvp.RespawnTimer -1
    execute as @a if score dummyplayer Awpvp.Map matches 1 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor1,type=armor_stand]
    execute as @a if score dummyplayer Awpvp.Map matches 2 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor2,type=armor_stand]
    execute as @a if score dummyplayer Awpvp.Map matches 3 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor3,type=armor_stand]
    execute as @a if score dummyplayer Awpvp.Map matches 4 run tp @e[limit=1,sort=random,tag=Awpvp.RespawnAnchor4,type=armor_stand]

#各モードごとの開始処理＆ゲーム中検知用スコアボードを1に
    scoreboard players set dummyplayer Awpvp.Ingame 1
    execute if score dummyplayer Awpvp.Mode matches 0 run function awpvp:start/dm
    execute if score dummyplayer Awpvp.Mode matches 1 run function awpvp:start/elim
    execute if score dummyplayer Awpvp.Mode matches 2 run function awpvp:start/ffa

#開始タイトルと効果音
    function awpvp:start/title
    execute as @a at @a run playsound entity.ender_dragon.growl ambient @s