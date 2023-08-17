## Ajouter des entêtes Expires ou Cache-Control

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   78   |  105 | 101  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | ネットワーク | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / ネットワーク / RAM / クエリ  |

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

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'entêtes manquantes Expires ou Cache-Control  |  0 |
