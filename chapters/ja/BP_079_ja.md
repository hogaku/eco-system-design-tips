## Combiner les fichiers CSS et JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  89    | 81  | 79  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| クエリ |

### 説明

La combinaison de feuilles de style CSS ou de bibliothèques Javascript permet de réduire le nombre de requêtes HTTP.

### 例s

Dans Wordpress, le plugin gratuit, `Autoptimize`, permet de combiner simplement les fichiers CSS.

Avec Webpack, le plugin `webpack-merge-and-include-globally` facilite la fusion des fichiers CSS et Javascript.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de fichiers CSS et JS non combinés  | 2  |
