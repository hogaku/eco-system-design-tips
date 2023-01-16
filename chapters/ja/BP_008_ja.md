## No.8 可能な限り非同期処理を実現する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   112   |  8 |  8 |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| RAM / ネットワーク / クエリ    |

### 説明

Lorsque l’interaction avec l’ユーザ induit un traitement lourd et long côté serveur, proposer un traitement asynchrone lorsque c’est possible.
L’idée est d’encourager l’ユーザ à déclencher le traitement, puis à se reconnecter quand celui-ci est terminé sans attendre sur son 端末 la fin de l'exécution; 
par 例, via la réception d’un e-mail contenant un lien.
Cette approche permet de réaliser des traitements par lots (batchs), souvent plus efficients en ressources que des traitements synchrones à la volée.
On libère ainsi les serveurs de présentation, qui peuvent prendre en charge d’autres internautes pendant que le traitement s’effectue en mode asynchrone côté serveur.
Il est également plus aisé de lisser la charge du serveur 担当者 du traitement, ce qui permet une meilleure mutualisation de serveurs et par conséquent moins de serveurs.

### 例

Dans le cas d’un service en ligne de conversion de documents bureautiques, inciter l’ユーザ à déposer ses fichiers en une seule fois, puis l’avertir par e-mail lorsque le traitement est terminé. Pour optimiser le processus, l’ensemble des fichiers peut être regroupé et compressé dans une archive.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de traitements synchrones qui prennent plus d'une minute  | 0  |
