## Réduire les accès au DOM via JavaScript

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   32   | 42  | 54  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM  |

### 説明

L’accès au DOM (Document Object Model) via JavaScript est une procédure lourde qui consomme beaucoup de cycles プロセッサ  (CPU). Réduire autant que possible ces accès.

Pour cela, vous pouvez assigner le nœud dans des variables que vous réutiliserez lors du ライフサイクル de l’application, ce qui évite de retraverser l’arbre à chaque manipulation du document.

Il est également possible d’utiliser des bibliothèques de type « Shadow DOM », qui optimisent les modifications de l’arbre par un système de batch.

### 例

Pour en savoir plus, vous pouvez consulter le projet de Shadow DOM du W3C :
https://w3c.github.io/webcomponents/spec/shadow/
et les préconisations du W3C pour réduire les accès au DOM via JavaScript :
https://www.w3.org/wiki/JavaScript_best_practices#Keep_DOM_access_to_a_minimum


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  d'accès à un élément HTML sans passer par une variable locale | 0  |
