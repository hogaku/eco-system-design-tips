## Encoder les sons en dehors du CMS

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  96    | 60  | 60  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. Utilisation | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク / ストレージ |

### 説明

Adapter et optimiser les sons en dehors du site web. Cette mesure permet d’économiser beaucoup de bande passante et soulagera la CPU et la mémoire vive, car un serveur web n’est pas optimisé pour le (ré)encodage des fichiers audio.

### 例

Si le son ajouté directement dans le CMS pèse 7 Mo, on économisera :
 - 7 Mo de bande passante lors de l’envoi ;
 - 100 Ko lors de l’écoute du résultat ;
 - 6,9 Mo de stockage sur le disque dur du serveur.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de fichiers sonores encodés directement par le CMS  | 0  |
