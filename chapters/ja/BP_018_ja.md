## No.18 リソースを提供するドメイン数を制限する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   170   | 55  | 18  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  クエリ  |

### 説明

Lorsqu’un site web ou un service en ligne héberge les composants d’une page web sur plusieurs domaines, 
le navigateur doit établir une connexion HTTP avec chacun de ces domaines. Une fois la page HTML récupérée, 
le navigateur appelle les ressources au fur et à mesure qu’il parcourt le DOM (Document Object Model). 
Certaines ressources sont indispensables au fonctionnement de la page. Si elles sont hébergées sur un autre domaine peu réactif,
cela peut rallonger le délai d’attente avant que la page soit opérationnelle. Dans la mesure du possible, il faut donc regrouper toutes les ressources sur un seul domaine.

Seule exception à cette règle, le fait d’héberger les ressources statiques (feuilles de styles, images, etc.) sur un domaine séparé,
pour éviter d’avoir à transporter un ou plusieurs cookies à chaque GET HTTP du navigateur. On réduit le temps de réponse ainsi que la bande passante consommée inutilement.

### 例

Pour un site web institutionnel à fort trafic, on privilégiera deux sous-domaines :
 - le serveur applicatif sur www.domain.tld ;
 - le serveur media « cookie-less » sur media.domain.tld.

On limite ainsi le nombre de domaines tout en évitant de transporter inutilement un cookie à chaque GET HTTP sur une ressource statique

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| 検証項目 domaines servant les ressources   |  5 |
