## Minifier les fichiers CSS, JavaScript, HTML et SVG

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  12    | 78  | 77  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| ネットワーク   |

### 説明

Utiliser un outil de minification CSS, Javascript, HTML et SVG permet de supprimer les espaces inutiles, les commentaires des développeurs, les sauts de ligne, les délimiteurs de blocs et ainsi réduire leur taille.

### 例

Il existe différents outils pour minifier comme par 例:

- CSS: cssnano, csso ou clean-css 
- Javascript: Terser, UglifyJS ou Babel-minify 
- HTML: htmlnano, HTMLMinifier
- SVG: SVGO, minify-xml ou équivalent


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de fichiers CSS, JavaScript, HTML et SVG non minifiés  | 0  |
