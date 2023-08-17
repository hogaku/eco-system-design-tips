## No.11 CMSを利用したカスタマイズ開発の推進

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   2   | 12  | 11  |      |

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
|  プロセッサ  / RAM / ネットワーク  |

### 説明

Utiliser un framework ou un développement sur mesure, afin de bénéficier d’une plus grande liberté dans l’optimisation de certains processus.
Les CMS sont en effet plus contraignants et imposent des fonctionnements parfois gourmands en ressources pour atteindre leur principal objectif, la souplesse.

Ainsi, pour la gestion de leurs extensions, les CMS utilisent des systèmes de « hook », qui reposent généralement sur une convention de nommage des fonctions.
Le test de l’existence de nouvelles fonctions de ces extensions est un processus qui consomme des ressources, tandis que les développements sur mesure n’ont pas à « découvrir » l’existence de fonctions puisqu’elles sont déjà connues. L’usage d’un nombre trop important d’extensions peut consommer beaucoup de ressources et ralentir le site.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'extensions d'un site reposant sur un CMS  | 3  |
