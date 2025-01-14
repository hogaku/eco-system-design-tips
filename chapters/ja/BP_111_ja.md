## Limiter la taille des e-mails envoyés

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   104   | 112  | 111  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. 利用 | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / クエリ  |

### 説明

Lorsqu’une notification, une alerte ou un message de confirmation doit être envoyé par e-mail à l’ユーザ, limiter la taille du courriel envoyé.
Éviter les pièces jointes et les images intégrées. Préférer un contenu court. Éventuellement, utiliser du texte brut plutôt que du HTML.

### 例

L’envoi d’un e-mail de confirmation de prise en compte d’une demande de contact ne justifie pas l’ajout de code HTML et d’images.
Un message HTML basique utilise en moyenne :
 - au moins 2 images (le logo et une signature en bas de page), soit 10 Ko environ ;
 - 12 Ko de code HTML pour la mise en page (styles inline, tableaux...) ;
 - 4 Ko de texte (le message + 2 liens d’action).

Au final :
 - e-mail HTML = 26 Ko ;
 - e-mail text brut = 4 Ko.

Soit un gain de 22 Ko par e-mail envoyé.
Dans le cas d’un site transactionnel avec, par 例, des alertes clients et internes, le gain potentiel devient considérable.


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de courriels envoyés de plus de 1mo  |  0 |
