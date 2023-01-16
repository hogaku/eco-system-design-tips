## Réduire au nécessaire les logs des serveurs

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   82   | 99  | 103  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 2 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ストレージ  |

### 説明

Les logs des serveurs (web, applicatif, base de données) pouvant devenir très volumineux, il est recommandé de les configurer dans leur ensemble.
En réglant au plus juste le niveau log de l’application (例: uniquement information/warning/error) et en ne traçant que les informations pertinentes,
on évite des écritures sur le disque qui peuvent être massives, ce qui limite la consommation de cycles CPU et réduit l’espace de stockage nécessaire.

Pour éviter de saturer des disques, il est également recommandé de mettre en place une durée de rétention et une rotation des logs en fonction du besoin lors de l’exploitation du service.

### 例

Les logs d’accès d’un serveur Apache peuvent être configurés comme suit pour exclure les ressources statiques et flux RSS :

```apacheconf
SetEnvIf Request_URI "\.(ico|pdf|ﬂv|jpg|jpeg|png|gif| js|css|gz|swf|txt)$" dontlog
SetEnvIf Request_URI "^/rss/" dontlog
CustomLog /var/log/apache/access.log combined env=!dontlog
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|de logs sans durée maximale de rétention   | 0  |
