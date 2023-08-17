## No.2 ニーズを的確に定量化する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   110   | 2  | 2  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 1. 仕様 | ユーザ/端末 | PO/AMOA |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 5 | 4 | 5 |

|リソース                                      |
|:----------------------------------------------------------:|
|プロセッサ  / RAM / ストレージ / ネットワーク / クエリ    |

### 説明

Les « dimensions » de chaque fonctionnalité doivent être définies précisément et dans leur ensemble. Il peut s’agir 
d’un taux de compression pour les images de l’interface graphique, du temps de réponse maximum pour une requête HTTP, 
du nombre d’items affichés dans une liste, etc.

Plus les « dimensions » et exigences associées à chaque fonctionnalité collent au métier, plus on évite la surqualité.
La logique doit donc être inversée par rapport aux habitudes actuelles. Si une information n’est pas précisée, 
c’est le niveau de qualité ou la quantité minimale qui est proposé. Par 例, en l’absence de précision, 
le nombre d’items d’une liste est limité à 5 éléments ou au nombre maximal affichable sur le plus petit écran cible de l’application.

Les valeurs par défaut, rarement modifiées par l'ユーザ, doivent être choisies pour répondre au besoin avec un impact minimal.

### 例

Gain potentiel : en jouant sur le nombre d’items affichés sur la page de résultats de son moteur de recherche Bing, 
Microsoft Research a démontré qu’il était possible de réduire jusqu’à 80 % l’infrastructure physique (nombre de serveurs) sous-jacente.

Autre 例 : en utilisant par défaut une résolution de vidéo acceptable (480p) plutôt que maximale, on réduit la bande passante 
utilisée pour la plupart des ユーザs (qui ne changeront pas la valeur par défaut), tout en laissant la possibilité aux autres 
d'augmenter la résolution s'ils en en ont le besoin.

### 検証原理

| 検証項目     | 以下に等しい   |  
|-------------------|:-------------------------:|
| de fonctionnalités avec des dimensions supérieures au besoin	| 0 |
