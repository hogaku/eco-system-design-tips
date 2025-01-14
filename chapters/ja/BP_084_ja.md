## Favoriser HSTS Preload list aux redirections 301

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  1060    |   | 84  |      |

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
|  ネットワーク / クエリ  |

### 説明

Le HSTS permet d’indiquer à n’importe quel navigateur, via un header de réponse HTTP gardé en cache que le domaine doit exclusivement être contacté en HTTPS.

Cela permet aux requêtes suivantes, émises sur le même domaine, d’être exclusivement contactées avec le protocole HTTPS, ce qui évite une multitude de redirections 301.
Néanmoins, le premier appel exige une réponse (potentiellement non sécurisé) HTTP avec un header STS.
Pour pallier ce problème, et obliger les navigateurs à contacter l’intégralité du domaine en HTTPS, il est possible, en plus d’activer le HSTS, de s’enregistrer dans une liste statique mise à jour sur tous les navigateurs récents : https://hstspreload.org.

Il est important de noter que l’enregistrement de son domaine sur htstpreload.org est rapide et concerne l’intégralité du domaine, (sous-domaines inclus). Avant d’effectuer cet enregistrement, qui est relativement lent à supprimer, veillez qu’aucun de vos sous-domaines ne soient perturbés par la mise en place du HTTPS

### 例

例 de configuration
```apacheconf
Strict-Transport-Security : max-age = 63072000 ; includeSubDomains ; preload
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de non activation de HSTS  | 0  |
