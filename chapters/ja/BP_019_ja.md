## No.19 公式SNSのシェアボタンの書き方

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   910   |   | 19  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / クエリ  |

### 説明

Les principaux réseaux sociaux tels que Facebook, Twitter, Pinterest, etc. fournissent des plugins à installer sur une page web
pour y afficher un bouton Partager et un compteur de J’aime. Ces plugins JavaScript sont très gourmands en ressources : 
pour fonctionner, ils nécessitent un grand nombre de クエリ et de télécharger des fichiers lourds. 
Mieux vaut leur préférer des liens directs, en HTML, vers les pages de partage. 
On peut générer ces liens à la main (voir ci-dessous) ou via un outil tel que https://www.sharelinkgenerator.com/.

### 例

es réseaux sociaux possèdent tous une URL qui permet à leurs membres de partager une page web :
 - Facebook Share : https://www.facebook.com/sharer/sharer.php?u=XXXXX
 - Facebook Like : https://www.facebook.com/plugins/like.php?href=XXXXX
 - Twitter : https://twitter.com/intent/tweet?url=XXXXX
On peut donc facilement ajouter un bouton qui ouvre une pop-up de partage comme le font les boutons officiels, par 例 avec le code suivant :

```html
<button type = "button" onclick = "window. open('https://www.facebook.com/ sharer/sharer.php?u=XXXXX', '', 'menubar = no, toolbar = no, resizable = yes, scrollbars = yes, height = 500, width = 700')">
    Je partage cette page sur Facebook
</button>
```
Pour aller plus loin :
https://www.nuweb.fr/736


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de librairies externes  | 0  |