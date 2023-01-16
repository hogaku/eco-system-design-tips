## Mettre en cache les réponses Ajax

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   91   | 107  | 102  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 4. Production | Utilisateur/Terminal | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 2 | 4 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Réseau / Requêtes  |

### 説明

Les réponses Ajax qui seront inchangées dans un futur proche ne doivent pas être redemandées au serveur. Par conséquent, les mettre en cache pour économiser de la bande passante.

### 例

Si une requête Ajax retourne une liste de noms de villes, de noms de contacts ou tout élément non calculé, il faut mettre ces réponses en cache du côté client pour ne pas générer à nouveau une requête vers le serveur.

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de réponses AJAX non mises en cache  | 10%  |
