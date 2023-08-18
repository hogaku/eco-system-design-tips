## No.26 CSSの略記号の使用

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   15   | 29  | 26  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

Utiliser les notations CSS abrégées pour réduire le poids de la feuille de styles.

### 例

Ne pas écrire :
```css
margin-top:1em; margin-right:0; margin-bottom:2em; margin-left:0.5em;
```
mais plutôt :
```css
margin:1em 0 2em 0.5em;
```

Pour aller plus loin :
 - https://www.w3.org/TR/CSS
 - https://www.456bereastreet.com/archive/200502/efficient_css_with_shorthand_properties/

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de notations CSS non abrégés  |  0% |
