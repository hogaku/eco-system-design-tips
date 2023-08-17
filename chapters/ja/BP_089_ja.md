## Utiliser des serveurs virtualisés

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   70   | 87  | 89  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM |

### 説明


La virtualisation est une technologie permettant de créer et d’exécuter des représentations virtuelles d’un ordinateur sur une ou plusieurs machines physiques. Le logiciel en charge de la virtualisation se charge d'allouer les ressources entre les différents environnements virtuels en fonction de leurs besoins.

En conséquence, la virtualisation permet :
* une économie sur le matériel par mutualisation
* une utilisation optimale des ressources (RAM, CPU, disque)

Cette démarche réduit la quantité de déchets électroniques (DEEE) et la consommation électrique comparé à l'utilisation de plusieurs serveurs physiques.

La conteneurisation est le compagnon à la virtualisation : une machine virtuelle peut accueillir un service de conteneurisation. Il va permettre d'executer de manière isolé plusieurs applications sur le même système d'exploitation.

### 例

Utiliser des outils de virtualisation tels que VMware, Xen, KVM, etc.

Utiliser des outils de conteneurisation tels que Docker, Kubernetes, etc.

Au lieu d’utiliser quatre serveurs dédiés pour quatre projets, et de les charger au maximum à 20 % de leur capacité, mutualiser les ressources en mettant en place un hyperviseur. En effet, une seule machine physique pourra offrir les mêmes services que les quatre serveurs dédiés. 

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'applications non hébergées de façon mutualisée |  0 |
