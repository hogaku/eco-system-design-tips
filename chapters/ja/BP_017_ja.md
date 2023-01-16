## No.17 適切なデータ形式を選択する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  113    | 54  | 17  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ / RAM / ストレージ / ネットワーク  |

### 説明

Le type de données utilisé pour manipuler et stocker une donnée a un impact significatif sur la consommation mémoire et
les cycles プロセッサ s nécessaires lors des manipulations en base de données, au niveau du serveur d’applications et même
dans le navigateur (manipulation via JavaScript), ainsi que sur l’espace de stockage nécessaire. Choisir un mauvais type de données entraîne :
 - un gaspillage de mémoire (par 例, si vous stockez de toutes
petites données dans une colonne prévue pour stocker de grosses quantités de données) ;
 - des problèmes de performance (il sera plus rapide de faire une
recherche sur un nombre que sur une chaîne de caractères).
   
Idéalement, les choix du type de données et de son dimensionnement doivent êtres fondés sur l’analyse d’un échantillon représentatif de données.

### 例

Dans le cas d’un établissement de formation, la taille du champ permettant de stocker le nombre d’élèves doit être basé sur une étude statistique.
On peut ainsi déterminer s’il est possible d’utiliser un TINYINT (1 octet, jusqu’à 127) plutôt qu’un SMALLINT (2 octets, jusqu’à 32 767). 
Dans tous les cas, le choix par défaut d’un INT (4 octets, jusqu’à 2 147 483 647) voire un BIGINT (8 octets) est une aberration (que nous rencontrons malheureusement tous les jours lors de nos audits…).
Gain potentiel : jusqu’à 8 fois moins de stockage. La consommation en cycle processeur est réduite dans les mêmes proportions.

Dans le cas d'un stockage d'un identifiant UUID, un stockage textuel sera non adapté. Un UUID est stocké sur 16 octets alors que sous sa forme textuelle cela demanderait au minimum 36 octets. Les indexes de base de données ne seraient également pas aussi efficaces qu'avec le type UUID/GUID/uniqueidentifier.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  形式が不適切なデータベースのフィールドの数  | 15%  |
