##
 # gamestart_title.mcfunction
 # 
 #
 # Created by anpan715.
##

#開始タイトル表示
title @a times 20 20 20
title @a title {"text":"\u226b\u226b\u226b\u226b\u226b\u226b \u30b2\u30fc\u30e0\u958b\u59cb \u226a\u226a\u226a\u226a\u226a\u226a","color":"gold"}

#各モードごとのルール表示
execute if score dummyplayer awpvp_mode matches 0 run title @a subtitle {"text":"\u76ee\u6a19\u30ad\u30eb\u6570\u306b\u5230\u9054\u305b\u3088","underlined":true,"color":"yellow"}
execute if score dummyplayer awpvp_mode matches 1 run title @a subtitle {"text":"\u6700\u5f8c\u306e\u4e00\u4eba\u306b\u306a\u308b\u307e\u3067\u751f\u304d\u6b8b\u308c","underlined":true,"color":"yellow"}
execute if score dummyplayer awpvp_mode matches 2 run title @a subtitle {"text":"\u6642\u9593\u5185\u306b\u4e00\u756a\u591a\u304f\u6575\u3092\u5012\u305b","underlined":true,"color":"yellow"}