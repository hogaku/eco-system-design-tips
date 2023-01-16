## Mettre en cache les objets souvent accédés en JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  33    | 36  | 49  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 3. Réalisation (fabrication / développement) | Réseau | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
| Processeur   |

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

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de données constantes (ou non volatiles) récupérés à plusieurs reprises sans être mises en cache  | 0  |
