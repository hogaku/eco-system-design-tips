## No.15 最適な技術選定

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   1   |  11 | 15  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 5 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ネットワーク  |

### 説明

Le choix des technologies étant primordial pour optimiser les ressources, sélectionner l’outil le plus économe en fonction de ses besoins
et de ses contraintes métier.

Dans la mesure du possible, il faut privilégier un site statique dont le contenu change très peu, pourra être mis en cache et ne sollicitera pas de serveur d'application ou de base de données.

Dans le cas d'un site plus dynamique, le sur-mesure permet plus de souplesse dans l'optimisation technique et d'embarquer le strict nécessaire pour répondre au besoin métier.

Si vous avez une partie d'un site web qui repose sur un nombre de pages très limité et qui délivre un service métier encadré (tunnel de commande, demande de devis) l'utilisation d'une SPA (Single Page Application) peut être recommandée. Cela permet de limiter les aller retours avec le serveur et rendre l'expérience plus fluide et performante.

### 例

Un site institutionnel avec uniquement une présentation de l'entreprise et un formulaire de contact devra privilégier un site statique étant donné la faible fréquence de mise à jour. 

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de technologies inopportunes  | 1  |
