## Eviter d'utiliser des images matricielles pour l'interface

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  161    | 21  | 35  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. Utilisation | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

Choisir le bon format d’image est crucial pour éviter de transporter des octets inutilement et économiser ainsi de la bande passante. 
Par ailleurs, avec la multiplication des terminaux, des tailles d’écran et l’augmentation de leur résolution, une approche vectorielle
doit être privilégiée par rapport à des images matricielles.
Grâce à cette bonne pratique, l’interface est indépendante de la résolution de l’écran. On limite donc aussi la dette technique.
La première règle consiste à remplacer les images matricielles (GIF, PNG, JPEG, WebP, etc.) par des styles (CSS), des pictos,
des glyphes ou des icônes fournis par une webfont ou une police standard. L’internaute n’a ainsi aucune ressource supplémentaire à télécharger.
S’il n’est pas possible d’utiliser des CSS ou une police standard (déjà installée sur le 端末 de l’internaute), vous pouvez aussi :
 - employer une webfont ;
 - recourir à une image vectorielle au format standard SVG.


### 例


![img.png](../img/img.png)

Cette image de 198 × 198 pixels pèse : 
 - 118 Ko dans un format matriciel non compressé ;
 - 6,5 Ko en JPEG (compression à 90 %) ;
 - 3,8 Ko en PNG ;
 - 0,7 Ko en SVG minifié.

Le format vectoriel est, dans ce cas précis, 5 à 10 fois moins lourd qu’un format matriciel tout en pouvant être retaillé à l’infini.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'images matricielles pour l'URL testée   | 5  |
