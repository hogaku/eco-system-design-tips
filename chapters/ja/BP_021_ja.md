## Découper les CSS

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   9   | 24  | 21  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 3. Réalisation (fabrication / développement) | Réseau | UX/UI Designer |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Processeur / Réseau  |

### 説明

Employer un ensemble de CSS plutôt qu’une seule, et appeler uniquement les CSS utiles en fonction du contexte. 
Cette méthode permet de limiter le poids de la page lors du premier téléchargement, donc d’économiser de la bande passante 
et de réduire la charge CPU.

### 例

Découper les CSS en fonction de la logique fonctionnelle :
 - layout ;
 - content ;
 - module x ;
 - module y ;
 - etc...

Dans le cas d’un site fonctionnellement riche, cela permettra d’exclure toutes les CSS des modules non utilisés. 
Le nombre de CSS doit rester raisonnable, plus pour des questions de maintenabilité que de performance, 
dans la mesure où les CSS générales (« layout » et « content » dans notre 例) seront concaténées en un seul fichier. 
Les CSS complémentaires (ici, « module x » et « module y ») seront téléchargées en fonction du contexte (page, fonctionnalités...).


### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de librairies CSS est supérieur ou égal  | 2  |
