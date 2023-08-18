## No.23 画像よりCSSを優先

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  11    | 26  | 23  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / クエリ  |

### 説明

Utiliser les propriétés CSS3 à la place d’images. En effet, le poids d’une feuille de styles est bien plus faible, 
surtout si elle est compressée. En outre, l’appel d’une feuille de styles ne génère qu’une seule requête HTTP, 
contre un grand nombre si l’on emploie beaucoup d’images
(une requête HTTP pour chaque image).

### 例

Les coins arrondis des cases doivent être gérés en CSS3 plutôt qu’avec des images.

Préférer l’écriture :
```css
#cadre {
    border-radius: 10px;
}
```

```html
<div id="cadre">
    <p>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    </p>
</div>
```


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  d'images qui auraient pu être remplacées par des CSS |  0 |
