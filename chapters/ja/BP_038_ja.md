## Utiliser le rechargement partiel d'une zone de contenu

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  40    |  49 | 38  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク   |

### 説明

Si votre page web comporte une ou plusieurs zones de contenus qui nécessitent un taux de rafraîchissement élevé, alors nous vous conseillons de procéder à un rechargement uniquement de celles-ci et non pas de toute la page.
Pour cela vous pouvez utiliser plusieurs techniques généralement Javascript couramment appelées AJAX mais qui peuvent aussi utilisées un Service Worker, un Web Component ou un développement sur mesure.

Il est même envisageable de ne pas inclure ces parties dans l'appel HTTP de la page pour l'hydrater avec ces zones dynamiques en Javascript, ce que certains appellent "component islands" ou "islands architecture". L'intérêt étant de pouvoir conserver une solution de cache pour la page "container" et de ne recharger que les "ilots" de contenu qui le nécessitent.

### 例

Les sites d’actualité utilisent très souvent ce procédé, qui permet d’identifier clairement les zones qui nécessitent 
d’être mises à jour rapidement (flash d’informations, données météo, cours de la Bourse, résultats sportifs, etc.).

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de zones de contenu pouvant être mis à jour partiellement mais qui ne le sont pas  | 0%  |
