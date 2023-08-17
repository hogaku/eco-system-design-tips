## Ne pas faire de modification du DOM lorsqu’on le traverse

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  43    | 43  | 41  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ   |

### 説明

Modifier le DOM (Document Object Model) lorsqu’on le traverse peut engendrer des situations où la boucle devient très gourmande
en ressources, notamment en cycles CPU. En effet, si on y ajoute des éléments en le traversant, il est possible de générer une boucle infinie qui consommera une grande quantité de ressources. Ce genre de modification est donc fortement déconseillée.

### 例

Éviter :
```html
<script>
    // Notation jQuery
    $('a.extlink').each(function(el) {
        $(el).attr('rel','external nofollow');
    });
</script>
```


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'insertions dans le DOM réalisées lorsque cette même partie du DOM est traversée par un code JavaScript  | 0  |