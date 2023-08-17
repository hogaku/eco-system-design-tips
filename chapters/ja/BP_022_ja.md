## No.22 ロードするCSSの数を減らす

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   10   | 25  | 22  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / クエリ  |

### 説明

Limiter le nombre de CSS pour ne pas multiplier les クエリ HTTP et pour simplifier le rendu côté navigateur. Utiliser une feuille de style commune pour tous les éléments communs, quel que soit l'affichage, et un fichier par résolution cible ou media querie.

Attention, intégrer ces fichiers directement dans le code HTML et NON PAS avec des directives @import dans les fichiers CSS eux-mêmes. En découpant de la sorte, le 端末 de l'ユーザ choisira ce qu'il lui correspond et dépriorisera le chargement des fichiers dont il a n'a pas besoin.

Le cas échéant, des fichiers CSS pour certains composants peuvent être chargés en fonction du contexte.

### 例

```
<link rel='stylesheet' id='css-css'  href='communs.css' type='text/css' media='all' />
<link rel='stylesheet' id='css-xs-css'  href='petits-ecrans.css' type='text/css' media='(max-width: 959px)' />
<link rel='stylesheet' id='css-sm-css'  href='tablettes.css' type='text/css' media='(min-width: 768px)' />
<link rel='stylesheet' id='css-mdlg-css'  href='grands-ecrans.css' media='(min-width: 960px)' />
<link rel='stylesheet' id='css-print-css'  href='print.css' type='text/css' media='print' />
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de fichiers CSS  | 10  |
