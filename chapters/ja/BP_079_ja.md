## Combiner les fichiers CSS et JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  89    | 81  | 79  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Réseau | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
| Requêtes |

### 説明

La combinaison de feuilles de style CSS ou de bibliothèques Javascript permet de réduire le nombre de requêtes HTTP.

### 例s

Dans Wordpress, le plugin gratuit, `Autoptimize`, permet de combiner simplement les fichiers CSS.

Avec Webpack, le plugin `webpack-merge-and-include-globally` facilite la fusion des fichiers CSS et Javascript.

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de fichiers CSS et JS non combinés  | 2  |
