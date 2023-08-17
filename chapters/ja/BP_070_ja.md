## Supprimer tous les warning et toutes les notices

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   51   |  65 | 70  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / ストレージ   |

### 説明

Les warnings et notices ralentissent les serveurs d’applications tels que PHP, car ces derniers doivent retracer l’origine des erreurs et inscrire dans les différents journaux système les messages expliquant les problèmes rencontrés.

### 例

Éviter :
```html
<html>
    <body>
        <form method="post" accept-charset="utf-8">
            <input type="text" name="ﬁrst_name" value="<?php print $_POST['ﬁrst_name'] ?>" placeholder="">
            <input type="text" name="last_name" value="<?php print $_POST['last_name'] ?>" placeholder="">
        </form>
    </body>
</html>
```
`$_POST['ﬁrst_name']` et `$_POST['last_name']` font générer des notices car ils ne sont pas nécessairement définis.


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de warning et notice en 制作 | 0  |
