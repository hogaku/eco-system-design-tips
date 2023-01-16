## No.16 パフォーマンス重視のアプリケーションフォークをいくつか使用する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  4    | 53  | 16  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ネットワーク  |

### 説明

Les logiciels open source sont souvent « forkés » (dérivés) pour des raisons de performance. Or un gain de performance implique
généralement une réduction en termes de consommation de ressources. Par conséquent, si un fork optimisé existe et offre 
un périmètre fonctionnel et technique suffisant pour votre projet, vous devez l’utiliser.

### 例

 - À Drupal, préférer plutôt la version optimisée Pressflow.
 - À Redis, préférer plutôt la version optimisée KeyDB.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de forks orientés performance est supérieur ou égal à   | 1  |
