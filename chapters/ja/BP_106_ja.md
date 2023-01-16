## Désactiver les logs binaires

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
| 83     | 93  | 106  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 6. Support / maintenance | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 2 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ストレージ  |

### 説明

Les logs binaires du serveur MySQL ou MariaDB peuvent devenir très volumineux, consommant des cycles CPU tout en générant des entrées-sorties (I/O) sur le disque dur, puisque chaque requête de modification/suppression est inscrite dans le fichier de log. Aussi, si vous avez la possibilité de désactiver ces logs, vous économiserez beaucoup de ressources.
Avant de désactiver, il faut s'assurer qu'une réplication de la base de données n'est pas nécessaire et que la perte des données depuis le dernier backup est acceptable.

### 例

Pour MySQL, ajouter la configuration suivante :
```
skip-log-bin
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'options --skip-log-bin et --disable-log-bin non activées dans le cas où les logs binaires ne sont pas utiles  | 0  |
