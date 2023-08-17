## Valider les pages auprès du W3C

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  8    | 15  | 31  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 5 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ   |

### 説明

Vérifier que le code HTML des pages est bien formé. Dans le cas contraire, le navigateur corrigera dynamiquement un certain nombre d’éléments pour afficher au mieux les pages posant problème.
Ces corrections dynamiques consomment inutilement des ressources à chaque chargement des pages concernées.

### 例

Utiliser le validateur du W3C (World Wide Web Consortium) pour vérifier que les pages sont bien valides et que le code HTML est correctement formé :
https://validator.w3.org

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'erreurs critiques  | 0  |
