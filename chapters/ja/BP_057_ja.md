## Utiliser tous les niveaux de cache du CMS

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   60   | 57  | 57  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM  |

### 説明

Si le CMS (comme Wordpress, Drupal, eZ Publish...) propose un système de cache à plusieurs niveaux, utiliser ces différents niveaux car leur granularité permet de réduire les ressources consommées (cycles CPU, mémoire) et d’offrir de bonnes performances à l’ユーザ.

### 例

Un CMS comme WordPress ne dispose pas nativement de système de cache, mais il existe plusieurs plugins qui comblent cette lacune, les plus connus étant :

- W3 total Cache
- Wp Super Cache
- Wp-rocket

Dès lors avec l'un de ces plugins, les pages sont mises en cache sur le serveur et ne sont plus générées pour chaque ユーザ. Accessoirement, ce genre d'outil fournit aussi d'autres optimisations orientées WebPerf qui vont dans le sens de l'éco設計 web.


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de cache non activé |  0 |
