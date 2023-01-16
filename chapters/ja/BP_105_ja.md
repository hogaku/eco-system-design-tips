## Apache Vhost : désactiver le AllowOverride

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  81    | 101  | 105  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 2 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ   |

### 説明

Lorsque la directive `AllowOverride` est activée, le serveur HTTP Apache doit remonter toute la hiérarchie des répertoires pour,
peut-être, y trouver un fichier .htaccess contenant des règles de surcharge. 
C’est pourquoi il est conseillé de désactiver si possible cette directive dans la configuration d’Apache.

### 例

Dans le fichier de configuration de votre hôte Apache, ajouter :
```apacheconf
AllowOverride none
```

Pour aller plus loin :
https://httpd.apache.org/docs/2.0/mod/core.html#allowoverride

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de fichiers de configuration contenant le texte "AllowOverride" avec autre chose que "AllowOverride None" | 0  |
