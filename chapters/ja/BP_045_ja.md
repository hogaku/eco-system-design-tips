## Modifier plusieurs propriétés CSS en 1 seule fois

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  34    | 32  | 45  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 4 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  |

### 説明

Pour limiter le nombre de repaint/reﬂow, il est conseillé de ne pas modifier des propriétés une à une. 
Préférer l’ajout/la suppression de classes CSS, ce qui permet de modifier en une seule fois plusieurs propriétés, tout en ne générant qu’un repaint/reﬂow (voir [la bonne pratique n° 45](/chapters/bonne_pratique_045_fr.md)).

### 例

Préférer l’écriture :
```html
<style>
    .in-error { color: red;
        font-weight: bold;
    }
</style>
<script>
    $el.bind('error', function () {
        $el.addClass('in-error');
    });
    $el.bind('running'), function () {
        $el.removeClass('in-error');
    };
</script>
```


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de déclarations CSS pouvant être regroupées en une seule (margin, padding, ...), et n'utilisant pas la version courte  | 0  |
