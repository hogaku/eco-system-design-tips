## Désactiver le DNS lookup d’Apache

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  84    | 100  | 104  |      |

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
|  プロセッサ  / ネットワーク  |

### 説明

À chaque fois qu’un serveur web reçoit une requête HTTP, il enregistre cette information dans un log, en traduisant généralement l’adresse IP de l’internaute en nom de domaine. Cette conversion (DNS Lookup) constitue l’un des goulots d’étranglement du serveur HTTP Apache.

À désactiver donc.

### 例

Dans le fichier de configuration de votre serveur Apache, situé à l’adresse `/etc/apache/httpd.conf` ou à l’adresse `/etc/apache2/apache2.conf`, écrire :
```apacheconf
 HostnameLookups Off
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de DNS lookup actif  |  0 |
