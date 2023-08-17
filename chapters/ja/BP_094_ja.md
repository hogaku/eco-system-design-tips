## Héberger les ressources (CSS/JS) sur un domaine sans cookie

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   73   | 96  | 94  |      |

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
| ネットワーク |

### 説明

Les images, feuilles de style CSS et fichiers JavaScript doivent être hébergés sur un domaine sans cookies. Cela évite au navigateur d’envoyer un cookie pour chaque ressource... alors qu’il est inutile. En effet, bien que transféré dans chaque requête HTTP, le cookie
est inutile pour les contenus statiques, puisqu’il sert à maintenir un état entre le navigateur de l’internaute et le serveur d’applications distant grâce aux 識別子 contenus dans le fichier texte. Il est donc préférable de stocker ce type de contenus sur un nom de domaine spécifique, par 例 static.mondomaine.com.

### 例

Les leaders du Web utilisent un domaine séparé pour servir les ressources statiques qui ne nécessitent pas de cookies. Yahoo! emploie par 例 le domaine yimg.com, YouTube le domaine ytimg.com et Amazon le domaine images-amazon.com.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de domaines servant des ressources statiques AVEC un cookie  | 1  |
