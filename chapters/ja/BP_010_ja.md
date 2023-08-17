## No.10 静的データをローカルに保存

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  205    | 10  | 10  |      |

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
| ネットワーク / クエリ    |

### 説明

Avec le support désormais généralisé sur tous les navigateurs des bases de données clé-valeur (IndexDB, Web Storage), et de la mise en cache dans le Cache Storage API, il est possible de stocker localement des données structurées statiques.

L’intérêt du stockage local est double. D’une part, on évite les allers-retours inutiles avec le serveur, ce qui économise des ressources et du temps de réponse.
D’autre part, comme les données sont locales, il est plus facile et plus rapide de les manipuler au sein de l’interface.

Le gain potentiel est la réduction de la charge serveur, donc du nombre d’équipements nécessaires (de leur empreinte environnementale et économique),
des serveurs HTTP jusqu’aux serveurs de base données.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de données statiques non stockées localement  | 25%  |
