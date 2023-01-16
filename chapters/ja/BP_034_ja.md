## Ne pas redimensionner les images coté navigateur

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  93    | 20  | 34  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 3. Réalisation (fabrication / développement) | Utilisateur/Terminal | Utilisateur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Processeur / Réseau  |

### 説明

Ne pas redimensionner les images en utilisant les attributs HEIGHT et WIDTH du code HTML. Cette approche impose en effet de transférer ces images dans leur taille originale, gaspillant ainsi de la bande passante et des cycles CPU.

### 例

Une image de 350 × 300 pixels encodée en PNG 24 pèse 41 Ko. Redimensionnée dans le code HTML, la même image affichée en vignette à 70 × 60 pixels pèse toujours 41 Ko, alors qu’elle ne devrait pas dépasser 3 Ko ! Soit 38 Ko téléchargés à chaque fois pour rien… NB : le redimensionnement étant fait par le navigateur peut aussi avoir un effet pixel sur le rendu final.

La meilleure solution consiste à générer les images à la taille à laquelle elles sont affichées. Soit vous le faites manuellement en utilisant un éditeur d'image, soit le CMS dispose d'une routine automatique qui va générer les images à la taille où elles sont appelées dans le template.

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
|  d'images redimensionnées dans le navigateur  | 0  |
