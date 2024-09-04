##
 # reset_kit_barrel.mcfunction
 # 
 #
 # Created by anpan715.
##

#樽を樽に置き換え（中身削除）
    fill ~1 ~-1 ~ ~5 ~-3 ~ barrel replace barrel

#演出
    playsound ui.button.click ambient @s
    tellraw @a ["",{"selector":"@s","color":"red"},{"text":"\u306b\u3088\u3063\u3066\u6a3d\u306e\u4e2d\u8eab\u304c\u30ea\u30bb\u30c3\u30c8\u3055\u308c\u307e\u3057\u305f\u3002","color":"red"}]