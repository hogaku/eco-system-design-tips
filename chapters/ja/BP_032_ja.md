## Externaliser les CSS et JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  7    | 16  | 32  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

Veiller à ce que les codes CSS et JavaScript ne soient pas embarqués dans le code HTML de la page, à l’exception d’éventuelles
variables de configuration pour les objets JavaScript.

En effet, si vous incluez du code CSS ou JavaScript dans le corps du fichier HTML, alors que ce dernier est utilisé par plusieurs pages
(voire tout le site), ce code doit être transféré pour chaque page demandée par l’ internaute, ce qui augmente le volume de données transmises.
En revanche, si les codes CSS et JavaScript sont inclus dans leurs propres fichiers, 
le navigateur peut les stocker dans son système de cache local afin de ne pas les redemander.

### 例

Dans le code HTML, ne pas écrire :
```html
<style type="text/css" media="screen">
    p { color: #333; margin: 2px 0 }
    /* Toutes les déclarations CSS du site */
</style>
```

mais plutôt :
```html
<link href="css/styles.css" rel="stylesheet">
```



### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'URL intégrant une quantité et / ou un nombre significatif de code CSS / Javascript (inline)   | 2  |
