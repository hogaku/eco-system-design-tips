## Ajouter des entêtes Expires ou Cache-Control

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   78   |  105 | 101  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Réseau | Administrateur systèmes |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Processeur / Réseau / Mémoire vive / Requêtes  |

### 説明

Les en-têtes Expires et Cache-Control définissent la durée pendant laquelle un navigateur doit conserver une ressource dans son cache. Il faut donc en prévoir et les configurer correctement pour les feuilles de style CSS, les scripts JavaScript et les images.

Idéalement, la durée de vie de ces éléments doit être la plus longue possible, afin que le navigateur ne les redemande pas au serveur. On économise ainsi des requêtes HTTP, de la bande passante et des cycles CPU côté serveur.

### 例

Voici un 例 de configuration des en-têtes Expires et Cache-Control pour le serveur web Apache :
```apacheconf
# BEGIN Cache-Control Headers
<IfModule mod_headers.c>
    <FilesMatch "\\.(ico|jpe?g|png|gif|swf|css|gz)$">
        Header set Cache-Control"max-age=2592000, public"
    </FilesMatch>
    <FilesMatch "\\.(html|htm)$">
        Header set Cache-Control"max-age=7200, public"
    </FilesMatch>
</IfModule>
# END Cache-Control Headers
```

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| d'entêtes manquantes Expires ou Cache-Control  |  0 |
