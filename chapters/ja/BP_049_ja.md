## Mettre en cache les objets souvent accédés en JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  33    | 36  | 49  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ   |

### 説明

L’accès au DOM (Document Object Model) est coûteux en termes de ressources processeur (cycles CPU). Aussi, lorsque vous utilisez plusieurs fois le même élément du DOM depuis JavaScript, stockez sa référence dans une variable afin de ne pas parcourir à nouveau le DOM pour ce même élément.

### 例

Ne pas écrire :
```javascript
document.getElementById('menu').property1 = 'foo'; document.getElementById('menu').property2 = 'bar';
```

mais plutôt :
```javascript
var mmenu = document.getElementById('menu');
menu.property1 = 'foo';
menu.property2 = 'bar'
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de données constantes (ou non volatiles) récupérés à plusieurs reprises sans être mises en cache  | 0  |
