## Désactiver le DNS lookup d’Apache

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  84    | 100  | 104  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Datacenter | Administrateur systèmes |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 2 | 3 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Processeur / Réseau  |

### 説明

À chaque fois qu’un serveur web reçoit une requête HTTP, il enregistre cette information dans un log, en traduisant généralement l’adresse IP de l’internaute en nom de domaine. Cette conversion (DNS Lookup) constitue l’un des goulots d’étranglement du serveur HTTP Apache.

À désactiver donc.

### 例

Dans le fichier de configuration de votre serveur Apache, situé à l’adresse `/etc/apache/httpd.conf` ou à l’adresse `/etc/apache2/apache2.conf`, écrire :
```apacheconf
 HostnameLookups Off
```

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de DNS lookup actif  |  0 |
