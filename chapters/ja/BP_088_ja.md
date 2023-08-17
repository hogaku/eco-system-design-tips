## Adapter la qualité de service et le niveau de disponibilité

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  501    |  86 | 88  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 2 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| Consommation électrique |

### 説明

La qualité de service (QoS pour Quality of Service) et le niveau de disponibilité (SLA pour Service Level Agreement) doivent être déterminés avec les ユーザs du site web ou du service en ligne. Il est par 例 inutile d’héberger le service dans un centre de données très haute disponibilité (Tier IV) si les ユーザs acceptent un taux de disponibilité inférieur ou égal à 99 % pour un service non critique. En effet, à efficience énergétique équivalente, plus le centre de données qui héberge le site ou service en ligne est disponible, plus son empreinte environnementale globale est élevée, notamment parce que tout est redondé et actif : deux chaînes d’alimentation électrique, deux chaînes de 制作 et distribution de froid, etc.
En d'autres termes, il faut éviter de tomber dans la surqualité. Il est plutôt conseillé d'appliquer une qualité de service en fonction des ressources et du taux de disponibilité nécessaires et suffisants.

### 例

Malgré leurs centaines de millions d’ユーザs, les géants du Web ne proposent pas un très haut niveau de disponibilité de type Tier IV. Les données sont redondées sur au moins un autre serveur dans un autre centre de données. Si un serveur tombe en panne, l’ユーザ est routé automatiquement vers le serveur de backup. Cette action peut prendre quelques secondes, ce qui est tout à fait acceptable et presque imperceptible pour l’ユーザ final.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'augmentations du niveau de disponibilité alors que le niveau actuel est suffisant  | 0  |
