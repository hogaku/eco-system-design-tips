## Mettre les caches entièrement en RAM (opcode et kvs)

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  85    | 90  | 92  |      |

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
| Processeur / Stockage   |

### 説明

Les systèmes de cache doivent être, autant que possible, montés entièrement en mémoire vive (RAM). Cette mesure permet d’éviter des entrées/sorties sur les disques durs, ainsi que des cycles CPU pour les gérer.

L’objectif est double : servir rapidement une réponse au client, et limiter le nombre de composants matériels (et logiciels) impliqués dans la réponse retournée par le serveur.

La mémoire vive étant très rapide en termes d’accès en lecture/écriture, la durée de consommation des ressources est particulièrement courte. En outre, la durée de vie des composants est allongée avec cette bonne pratique, puisqu’il n’y pas de mouvement mécanique comme lors d’un recours au disque dur.

### 例

例s d’intégration d’un cache RAM à Drupal :
 - intégration de Memcache : https://drupal.org/project/memcache
 - intégration de Varnish : https://drupal.org/project/varnish

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de caches non mis en RAM  | 0  |
