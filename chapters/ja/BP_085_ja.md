## Mettre en place un plan de fin de vie du site

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   1030   |   | 85  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 7. Fin de vie | データセンター | PO/AMOA |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 2 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク / クエリ / ストレージ   |

### 説明
La plupart des environnements (POC - proof of concept, tests, recette, …) finissent par tomber en désuétude et ne sont plus nécessaires. Environ 25 % des serveurs physiques et 20 % des serveurs virtuels (VM) sont des zombies. C’est-à-dire que des serveurs consomment en attendant qu’on les utilise. Ils constituent autant d’impacts environnementaux et économiques évitables.

Réaliser une analyse de fin vie évite cette situation.

Un plan de fin de vie simple consiste à nommer la personne qui décide de l’arrêt du service. Son rôle sera alors de monitorer son activité puis de l’arrêter. Une autre approche fixe le scénario de fin de vie (date de péremption…) et commissionne le budget adéquate dès la 設計. Au lieu d’arrêter un service, une troisième piste consiste à allonger sa durée de vie.

Arrêter un service implique de 
- Libérer les ressources : décommissionner le service, ses dépendances, les outils utilisés par l’équipe de développement (ex : chanel Teams).
- Supprimer, archiver… les données (y compris la GED et le système de suivi des bugs).
- Réaffecter les installations, équipements et autres ressources du projet (y compris le code source).
- Valoriser les compétences acquises pendant la vie du projet.

### 例

Lors d'une migration de données ou d'applications vers un environnement cloud, plusieurs scénarii de fin de vie sont possibles :
* copier/coller l'existant vers le cloud avec décommissionnement de l'existant.
* refactoring avec une modification de l'architecture et du code et donc une remise en cause de l'existant : par 例, un questionnement sur les fonctionnalités non utilisées et que l'on reprend au cas où…

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de site sans plan de fin de vie | 0  |
