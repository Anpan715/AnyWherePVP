#開始前チェック
execute if score dummyplayer awpvp_map matches 1 unless entity @e[tag=spawn1,type=armor_stand] run tellraw @a ["",{"text":"\uff01\uff01\u30a8\u30e9\u30fc\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\uff01\uff01","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\u539f\u56e0\uff1a","bold":true,"color":"yellow"},{"text":"Respawn Anchor\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","color":"yellow"},{"text":"\n"},{"text":"\u89e3\u6c7a\u65b9\u6cd5","bold":true,"color":"green"},{"text":"\uff1a\u6307\u5b9a\u3055\u308c\u305fmap\u3068\u540c\u3058\u30ca\u30f3\u30d0\u30fc\u306e\nRespawn Anchor\u3092\u8a2d\u7f6e\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}]
execute if score dummyplayer awpvp_map matches 2 unless entity @e[tag=spawn2,type=armor_stand] run tellraw @a ["",{"text":"\uff01\uff01\u30a8\u30e9\u30fc\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\uff01\uff01","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\u539f\u56e0\uff1a","bold":true,"color":"yellow"},{"text":"Respawn Anchor\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","color":"yellow"},{"text":"\n"},{"text":"\u89e3\u6c7a\u65b9\u6cd5","bold":true,"color":"green"},{"text":"\uff1a\u6307\u5b9a\u3055\u308c\u305fmap\u3068\u540c\u3058\u30ca\u30f3\u30d0\u30fc\u306e\nRespawn Anchor\u3092\u8a2d\u7f6e\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}]
execute if score dummyplayer awpvp_map matches 3 unless entity @e[tag=spawn3,type=armor_stand] run tellraw @a ["",{"text":"\uff01\uff01\u30a8\u30e9\u30fc\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\uff01\uff01","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\u539f\u56e0\uff1a","bold":true,"color":"yellow"},{"text":"Respawn Anchor\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","color":"yellow"},{"text":"\n"},{"text":"\u89e3\u6c7a\u65b9\u6cd5","bold":true,"color":"green"},{"text":"\uff1a\u6307\u5b9a\u3055\u308c\u305fmap\u3068\u540c\u3058\u30ca\u30f3\u30d0\u30fc\u306e\nRespawn Anchor\u3092\u8a2d\u7f6e\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}]
execute if score dummyplayer awpvp_map matches 4 unless entity @e[tag=spawn4,type=armor_stand] run tellraw @a ["",{"text":"\uff01\uff01\u30a8\u30e9\u30fc\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\uff01\uff01","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\u539f\u56e0\uff1a","bold":true,"color":"yellow"},{"text":"Respawn Anchor\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","color":"yellow"},{"text":"\n"},{"text":"\u89e3\u6c7a\u65b9\u6cd5","bold":true,"color":"green"},{"text":"\uff1a\u6307\u5b9a\u3055\u308c\u305fmap\u3068\u540c\u3058\u30ca\u30f3\u30d0\u30fc\u306e\nRespawn Anchor\u3092\u8a2d\u7f6e\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}]
execute as @a unless score @s awpvp_kit matches 1..10 run tellraw @a ["",{"text":"\uff01\uff01\u30a8\u30e9\u30fc\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\uff01\uff01","bold":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\u539f\u56e0\uff1a\u53c2\u52a0\u8005\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","bold":true,"color":"yellow"},{"text":"\n"},{"text":"\u89e3\u6c7a\u65b9\u6cd5","bold":true,"color":"green"},{"text":"\uff1a\u6700\u4f4e\u3067\u3082\u4e8c\u4eba\u4ee5\u4e0a\u304cawpvp_kit\u3092\u9078\u629e\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}]

#エラーがあった際のreturn処理
execute if score dummyplayer awpvp_map matches 1 unless entity @e[tag=spawn1,type=armor_stand] run return 1
execute if score dummyplayer awpvp_map matches 2 unless entity @e[tag=spawn2,type=armor_stand] run return 2
execute if score dummyplayer awpvp_map matches 3 unless entity @e[tag=spawn3,type=armor_stand] run return 3
execute if score dummyplayer awpvp_map matches 4 unless entity @e[tag=spawn4,type=armor_stand] run return 4
execute as @a unless score @s awpvp_kit matches 1..10 run return 5

#killカウントリセット＆setdisplay削除
scoreboard players set @a awpvp_killcount 0
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

#アーマースタンド召喚＆タイマーセット
<<<<<<< HEAD
summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["awpvp_kitpos"]}
scoreboard players set dummyplayer awpvp_timerstart 7
function awpvp:start/timer_start
=======
summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["Awpvp.KitPos"]}
scoreboard players set dummyplayer Awpvp.Timerstart 7
function awpvp:start/timer
>>>>>>> 0aaed1d82cbb9b41eadb4b0bada7ad6077e7e50c
