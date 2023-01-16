## Optimiser les requêtes aux bases de données

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  59    | 74  | 75  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク   |

### 説明

La base de données est en général un composant essentiel des applications et les requêtes effectuées pour récupérer
et enregistrer des données sont nombreuses; exécutées fréquemment, elles ont une influence importante sur la consommation de 
ressources de la solution.

Dans cette optique il est important de prêter attention à ces requêtes et de valider, au moins pour celles qui coûtent le
plus, qu'elles sont bien optimisées.

Les pistes classiques d'optimisation sont : 

 - Ramener moins de données et se limiter au nécessaire. Par 例, pour les bases relationnelles, la clause `LIMIT` limite le nombre de lignes du résultat. Quand c'est possible, l'utiliser permet de réduire la quantité de données transférées. Le gain en performance sera d’autant plus important si les enregistrements contiennent un grand nombre de champs volumineux.
 - N'utiliser que les champs qui sont nécessaires dans les tables ou documents utilisés. Afin de ne pas transférer inutilement des données qui ne seront pas utilisées, et de ne pas utiliser des ressources du serveur de base de données et du serveur d'application pour les manipuler.
 - Ajouter des index sur les champs utilisés comme clefs. Ceux-ci dépendent de votre modèle. Leur ajout peut complètement changer les performances d'une requête. Attention, ajouter un index rend l'écriture plus longue, car il faut le mettre à jour pour les documents ajoutés, modifiés ou supprimés. Il faut le faire si on a plus de lectures que d'écritures ou si la lecture est particulièrement couteuse.
 - Utiliser les outils du système de gestion de base de données permettant d'analyser les requêtes pour identifier les points d'amélioration, `EXPLAIN` par 例 pour un SGBDR.
 - Conserver en cache le résultat des requêtes les plus couteuses, ainsi que les données qui changent peu ou jamais (données de référence).
 - Éventuellement, modifier le modèle de données pour pouvoir accéder plus facilement aux informations sans jointures (dénormalisation)

### 例

Voici un premier 例, avec la clause `LIMIT` :

Si vous ne souhaitez afficher que les 25 premiers enregistrements d’une table contenant le nom et le prénom de personnes, remplacer lors de la sélection :
```sql
SELECT prenom, nom FROM personnes
```
par :
```sql
SELECT prenom, nom FROM personnes LIMIT 0, 25
```

Autre 例, avec la création d'un index : 

```sql
CREATE INDEX idx_personnes_nom_prenom ON personnes(nom, prenom)
```

Suite à cette commande, le système de gestion de base de données pourra retrouver plus rapidement les lignes de `personnes` à partir des informations (nom, prenom).


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de requêtes peu performantes identifiées non optimisées | 0  |
