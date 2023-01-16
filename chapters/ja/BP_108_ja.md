## Optimiser les PDF

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   98   | 109  | 108  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. Utilisation | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / ストレージ  |

### 説明

S’assurer, avant leur mise en ligne, que les PDF sont réellement optimisés pour le Web : taux d’échantillonnage et de compression des images, polices incorporées, résolution…

Le cas échéant, proposer le téléchargement des PDF chapitre par chapitre.

Si vous souhaitez offrir à l’ユーザ de télécharger un lecteur PDF, préférer un logiciel léger tel que Sumatra (4,3 Mo) au lecteur d’Adobe (48 Mo), soit une bande passante divisée par 10 à chaque téléchargement et, surtout, une plus faible consommation de mémoire vive (ce qui permet de lutter contre la fracture numérique et l’obsolescence programmée).

### 例

our un rapport annuel en PDF :
 - vérifier que les images sont fortement compressées et à une résolution maximale de 72 dpi ;
 - n’inclure que les principales polices ;
 - découper le rapport en chapitres, afin de limiter les téléchargements inutiles.


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de PDF non optimisés  |  0 |
