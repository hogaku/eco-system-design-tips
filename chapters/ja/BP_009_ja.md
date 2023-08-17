## No.9 HTTPリクエスト数を制限する

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   180   | 9  | 9  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| ネットワーク / クエリ    |

### 説明

Le temps de chargement d’une page côté navigateur est directement corrélé au nombre de fichiers que le navigateur doit télécharger,
et au poids unitaire de chaque fichier.

Pour chaque fichier, le navigateur émet un GET HTTP vers le serveur.

Il attend sa réponse, puis télécharge la ressource dès qu’elle est disponible. Selon le type de serveur web que vous utilisez,
plus le nombre de requêtes par page est important, moins vous pourrez servir de pages par serveur. 
Diminuer le nombre de requêtes par page est crucial pour réduire le nombre de serveurs HTTP (voire des serveurs d'application et de base de données) nécessaires au fonctionnement du site,
et donc les impacts environnementaux associés.

### 例

Pour afficher des petits drapeaux pour le choix d'une langue, l'utilisation d'une spritesheet CSS permet de les regrouper dans une seule image de plus grande taille.
Ce procédé réduit le nombre de requêtes HTTP.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de クエリ HTTP  | 40  |
