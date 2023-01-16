## Éviter les redirections

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   45   | 97  | 95  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 6. Support / maintenance | Réseau | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
| Processeur / Réseau / Stockage |

### 説明

Les redirections dégradent le temps de réponse, tout en consommant des ressources inutilement. Il faut donc les éviter autant que possible. Ces redirections peuvent avoir lieu à différents niveaux : code HTML, code JavaScript, serveur HTTP et serveur d’applications (PHP, etc.).

### 例

Au niveau du serveur HTTP (Apache, dans ce cas), une redirection consiste à activer une réécriture systématique des URL via le fichier
.htaccess :
```apacheconf
<IfModule mod_alias.c>
    Redirect permanent http://ancienne_adresse.fr http://nouvelle.adresse.fr/
</IfModule>
```
Mieux vaut remplacer manuellement les adresses statiques intégrées aux pages web


### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de redirections  | 1  |
