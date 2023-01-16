## Supprimer tous les warning et toutes les notices

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   51   |  65 | 70  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Datacenter | Administrateur systèmes |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
| Processeur / Stockage   |

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

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de warning et notice en production | 0  |
