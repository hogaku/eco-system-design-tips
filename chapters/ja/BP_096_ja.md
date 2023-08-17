## Afficher des pages d'erreur statiques

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  46    | 98  | 96  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ネットワーク / ストレージ  |

### 説明

Les pages d'erreurs (40x, 50x) doivent être les plus légères possibles, et même idéalement inexistantes. En effet, lorsque le navigateur demande une ressource qui n’existe pas (image, feuille de styles CSS, fichier JavaScript, etc.) ou que le serveur renvoie une erreur, la page d'erreur renvoyée peut être plus lourde que la ressource ou la page demandée.

De plus, certains CMS exécutent leur routine de recherche de contenu (dans la base de données) pour tenter de trouver une ressource demandée. Par conséquent, du code serveur est exécuté, le serveur de base de données est sollicité, et la génération dynamique de la page HTML est exécutée. Tout ce processus aboutit à un gaspillage de cycles CPU, de mémoire vive et de bande passante.

### 例

Éviter les pages 404 dynamiques, qui sont personnalisées en fonction du contenu de l’URL. Préférer une page 404 statique.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de pages d'erreur dynamiques |  0 |
