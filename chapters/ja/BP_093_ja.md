## Stocker les données dans le cloud

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  71    |  92 |  93 |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
| ストレージ   |

### 説明

Pour optimiser l’espace de stockage nécessaire aux ressources d’un site web ou d’un service en ligne, il peut être intéressant d’utiliser des solutions de cloud computing. Ainsi, tout en disposant d’une solution évolutive (elastic en anglais), on ne monopolise pas de ressources inutilement. L’autre intérêt est d’héberger les ressources statiques sur un domaine sans cookies. On évite alors de transporter le cookie avec chaque ressource transférée vers le navigateur (voir la bonne pratique n° 96).

Cette approche est donc judicieuse pour les images et autres ressources statiques. Comme il ne faut pas multiplier les domaines (voir la bonne pratique n° 55), le plus simple est de regrouper toutes les ressources statiques sur un seul service de stockage en ligne.

### 例

Pour la réalisation d’un jeu concours basé sur des témoignages vidéo, il est plus efficace de recourir au service de stockage S3 d’Amazon que d’ajouter de nouveaux disques durs aux serveurs existants.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de ressources, données du site web qui ne sont pas stockées sur une solution de cloud computing  |  0 |
