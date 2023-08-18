## Rendre les éléments du DOM invisibles lors de leur modification

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   44   | 44  | 42  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ   |

### 説明

Lorsqu’un élément du DOM (Document Object Model) doit être modifié par plusieurs propriétés, chaque changement de style ou de contenu va générer un repaint ou un reﬂow. Aussi est-il généralement plus économe de :
 - rendre l’élément invisible (passer la propriété display à none) (1 reﬂow) ;
 - modifier toutes les propriétés de l’élément et rendre l’élément à nou-veau visible (1 reﬂow).

Soit 2 reﬂow au maximum.

### 例

Procéder comme suit :
```javascript
var elem = document.getElementById('foo'); elem.style.display ='none'; // Génère 1 reﬂow elem.style.width	='10em';
elem.style.height ='auto';
// ... autres changements ...
elem.style.display ='block'; // Génère 1 reﬂow
```

Au final, 2 reﬂow sont nécessaires au lieu de 6 ou 7 potentiellement.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de manipulations d'un élément du DOM sans qu'il soit rendu invisible pendant sa modification |  1 |
