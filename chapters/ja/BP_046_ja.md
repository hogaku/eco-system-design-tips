## Valider votre code avec un Linter

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   35   | 33  | 46  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  |

### 説明

L’analyseur de qualité du code JSLint vérifie que la syntaxe JavaScript utilisée sera comprise par tous les navigateurs. 
Le code obtenu respecte ainsi des contraintes syntaxiques qui permettent aux interpréteurs d’exécuter le code plus facilement et donc plus rapidement. Le processeur est donc sollicité moins longtemps.

Dans des développements modernes, nous recommandons d'ajouter à vore process de livraison différents outils permettant 
d'assurer la qualité de votre code. 

### 例

Nous pouvons par 例 utiliser: 
* [ESLint](https://eslint.org/) pour le code JavaScript
* [Stylelint](https://stylelint.io/) pour vs feuilles de styles

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de lignes de code source non validées par des outils comme ESLint  | 0  |
