## Utiliser un serveur asynchrone

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  77    | 94  | 97  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM  |

### 説明

Les serveurs (web, d’applications, etc.) tels que Nginx, node.js ou Gwan sont conçus pour utiliser le minimum de ressources possible. Grâce à leur fonctionnement en mode asynchrone, ils ne sont pas tenus de créer un processus ou un thread pour chaque requête. Ils évitent ainsi de gaspiller leurs ressources.

Alors que la plupart des serveurs web augmentent leur consommation de mémoire vive au fur et à mesure des sollicitations, les serveurs asynchrones demeurent eux très stables.

### 例

Nginx a la réputation d’être plus performant qu’Apache. Il peut ainsi servir 2,1 fois plus de requêtes par seconde que ce serveur.

Pour aller plus loin :
 - https://nbonvin.wordpress.com/2011/03/14/apache-vs-nginx-vs-varnish-vs-gwan
 - https://nbonvin.wordpress.com/2011/03/24/serving-small-static-files-which-server-to-use


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de serveurs applicatifs synchrones  | 1  |
