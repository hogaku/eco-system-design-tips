## Utiliser les notations CSS abrégées

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   15   | 29  | 26  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 3. Réalisation (fabrication / développement) | Réseau | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Réseau  |

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

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de notations CSS non abrégés  |  0% |
