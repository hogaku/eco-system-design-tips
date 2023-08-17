## Ne se connecter à une base de données que si nécessaire

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   56   | 72  | 73  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク   |

### 説明
Quelque soit le système de base de données, l’ouverture d’une connexion est un processus coûteux en ressources pour le client et le serveur :
*	Allocation de mémoire et I/O disque pour les buffers,
*	Aller-retours réseaux pour le protocole de connexion,
*	Coût CPU induit.

例 :  pour Oracle, plusieurs aller-retours sont nécessaires (validation des credentials, information sur le driver, négociation de la taille des paquets optimale, ...).
Le fait d’ouvrir et de fermer une connexion nécessite l’allocation et la désallocation de ces ressources ainsi que de nombreux échanges réseaux, à chaque fois.

La bonne pratique qui est usuellement utilisée est la mise en place d’un pool de connexions.
Il permet d’optimiser la gestion des connexions ainsi que les performances. Cependant, sa configuration n’est pas forcément une opération triviale (nécessite de superviser le comportement de celui-ci pour trouver le bon paramétrage).

Ceci dit, chaque fois que l’application peut éviter un accès à la base de données, faites-le !
### 例

HikariCP est un pool de connexions JDBC solide et performant. Il est intégré dans SpringBoot.

Dans les cas où il n'y a pas de pool de connexion, réutiliser une connexion et ne pas ouvrir/fermer une nouvelle connexion à chaque requête.


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de connexions à une base de données pour requêter, stocker une donnée non nécessaire à l'utilisation du service | 0  |
