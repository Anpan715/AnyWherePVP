# Read me

## セットアップ

ワールドの好きな箇所にて`/function awpvp:setup`を実行してください。  
次に`/function awpvp:getadmin`を実行し、手に入れた防具立てを戦闘したいマップの復活地点にしたい場所に配置してください。  
アンインストールする場合は`/function awpvp:uninstall`を実行してから削除してください。

## Hubの使い方

> [!IMPORTANT]
> __1階の利用にもOPが必要です。__  
> 全員へのopの付与が厳しい場合はop所持者がスコアボードをsetしたり、更新看板をクリックしてあげてください。  
> プレイヤーのKit設定 `/scoreboard players set *PlayerID* Awpvp.Kit *KitNo.*`  

### 1階  

- 書見台
  - 各モードのルールが書かれています。

- Kit看板
  - 右クリックすることによってKitを選択できます。
  - キットの中身は樽の中身ですが、1階にあるのはサンプルのため実際の配布物には影響しません。

- サンプルの更新看板
  - 樽の中身をAdminRoomと同期します。

- AdminRoom看板
  - "admin"タグが付いたプレイヤーが右クリックすると2階のAdminRoomに移動します。
  - 自分に"admin"タグを付与 `/tag @s add admin`

### 2階  

- Kitエディタ  
  - 樽の中身を変更すると配布物も変更されます。
  - 樽の中身はアイテムの配布位置に対応しています。
    最上段：ホットバーの１～９スロット  
    中段  ：左から頭・体・脚・足・左手のスロット  
    最下段：インベントリ最上段の１～９スロット
  
- 設定看板
  - 右クリックでMap、モード、モードの設定を変更することができます。

- 開始看板
  - 右クリックでゲームを開始します。
  - ゲームを強制終了する場合、`/function Awpvp:end/force`で強制終了できます。

## パッチノート

1.0

- 変更点
  - 対応バージョンを1.21以降に変更
  - アンインストール用functionを追加
  - Kit6~10の樽の中にもテンプレートを配置
  - その他細かい変更
  - その他細かい技術面の変更
- 不具合修正
  - Eliminationの設定看板がモード看板を上書きしてしまう不具合を修正
  - へロブラインを削除
___
0.4-beta  

- 変更点  
  - データパックのアイコンを変更  
- 不具合修正  
  - インストールメッセージの不具合を解決  

___
0.3-beta  

- 不具合修正  
  - 開始時・リスポーン時にアイテムが配布されない不具合を修正  
  - elimの開始時にチャットにライフ数表示されない不具合を修正  
  - リスポーンできない不具合を修正  

___
0.2-beta  

- 変更点  
  - 観戦が可能に  
  - 試合以外はTabのlistに選択中のKitが表示されるように  
  - Kit6～10が利用可能に  
  - モード設定看板の３行目に現在の設定を表示するように  
  - 樽の中身をリセットする看板を追加  
  - Namespace IDをany_where_pvpからawpvpに変更  
  - 全てのscoreboardのIDの前にawpvp_を追加  
  - 一部スコアボードの名前を調整  
  - 一部functionファイルを別のフォルダに移動  
  - データパックのアイコンを追加  
  - このファイルを追加。  
  - その他細かい調整（看板の種類の変化など）  
- 不具合修正  
  - elim_remaining_playersの脱字を修正（elim_emaining_players）  
  - apvp_elim_lifeのrendertypeがheartsだったのを修正  

___
0.1-beta  
基礎的なな処理が完成、プレイ可能に。
