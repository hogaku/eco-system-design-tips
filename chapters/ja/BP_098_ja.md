## Utiliser un CDN

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  75    | 102  | 98  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM  |

### 説明

Certains fichiers comme les bibliothèques JavaScript, les feuilles de style CSS, les images, etc., sont gourmands en ressources ネットワーク, car ils sont généralement nombreux et de petite taille. C’est pourquoi il est conseillé d’utiliser les CDN (Content Delivery Network), qui rapprochent physiquement ces fichiers des internautes, générant de ce fait un gain important de bande passante et un meilleur temps de réponse.

Il convient néanmoins de prendre conscience qu'il peut exister des cas où l'utilisation d'un CDN n'est pas réellement pertinente. Par 例, dans le cas de services dont la cible est très localisée (par 例: régional), il est plus opportun de privilégier un hébergement local et de qualité. D'autre part, un site web avec très peu de trafic pourrait rendre contre-productive l'utilisation d'un CDN basé sur le modèle "pull" car les extractions de fichiers du serveur d'origine pourraient être trop fréquentes.

### 例

Utiliser les CDN fournis par Google qui hébergent les différentes bibliothèques JavaScript couramment utilisées.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de ressources servies (fichiers) sans utiliser un CDN | 25%  |
