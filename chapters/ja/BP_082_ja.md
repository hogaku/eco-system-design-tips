## Optimiser la taille des cookies

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   65   | 82  | 82  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 4 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

Un cookie permet de maintenir un état entre le navigateur de l’internaute et le serveur web distant grâce à une donnée partagée.
Cette donnée est transféré dans chaque requête HTTP.
Il faut donc optimiser au maximum sa taille et le supprimer dès que sa présence n’est plus obligatoire.

### 例

On peut supprimer un cookie lorsqu’il n’est plus utile en précisant une durée d’expiration nulle ou négative, de la manière suivante :
```
Set-Cookie: user_mavariable=; Max-Age=0
```
Voir la RFC 6265 de l’IETF (Internet Engineering Task Force) pour en savoir plus sur les cookies :
https://datatracker.ietf.org/doc/html/rfc6265

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
|  de cookies non utiles ou non optimisés |  0 |
