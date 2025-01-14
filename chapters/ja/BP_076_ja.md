## Éviter le transfert d'une grande quantité de données pour réaliser un traitement

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  58    | 75  | 76  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク   |

### 説明

Les systèmes de gestions de base données sont conçus et optimisés pour répondre efficacement aux traitements de grandes quantités de données.
Dans le cas de traitements avec une logique plus ou moins complexe, il est déconseillé de récupérer les données "brutes" et de réaliser toutes les opérations de calcul, de transformation ou encore d'agrégation côté serveur backend voire frontend.

Ces traitements doivent plutôt être réalisés au plus près de la donnée afin de:

- limiter la bande passante à cause du transfert de données non traitées
- profiter des optimisations de la base données sur la manipulation des données
- d'alléger le cycle CPU côté serveur backend voire frontend 

### 例

Dans le cas de requêtes complexes avec un nombre important de données et de l'utilisation d'un système de gestion de base de données relationnelles (SGBDR), il est conseillé d'utiliser des procédures stockées car:

 - une procédure stockée économise au serveur l’interprétation de la requête puisqu’elle est précompilée ;
 - une procédure stockée est moins gourmande en bande passante puisqu’il y a moins d’informations échangées entre le serveur et le client.

Tous les SGBDR récents (SQL Server, MySQL, PostgreSQL, etc.) prennent en charge les procédures stockées.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de traitements avec une grande quantité de données exécutés en dehors du serveur de base de données |  1 |
