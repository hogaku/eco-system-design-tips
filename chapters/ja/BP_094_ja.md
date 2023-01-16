## Héberger les ressources (CSS/JS) sur un domaine sans cookie

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   73   | 96  | 94  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Datacenter | Administrateur systèmes |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
| Réseau |

### 説明

Les images, feuilles de style CSS et fichiers JavaScript doivent être hébergés sur un domaine sans cookies. Cela évite au navigateur d’envoyer un cookie pour chaque ressource... alors qu’il est inutile. En effet, bien que transféré dans chaque requête HTTP, le cookie
est inutile pour les contenus statiques, puisqu’il sert à maintenir un état entre le navigateur de l’internaute et le serveur d’applications distant grâce aux 識別子 contenus dans le fichier texte. Il est donc préférable de stocker ce type de contenus sur un nom de domaine spécifique, par 例 static.mondomaine.com.

### 例

Les leaders du Web utilisent un domaine séparé pour servir les ressources statiques qui ne nécessitent pas de cookies. Yahoo! emploie par 例 le domaine yimg.com, YouTube le domaine ytimg.com et Amazon le domaine images-amazon.com.

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de domaines servant des ressources statiques AVEC un cookie  | 1  |
