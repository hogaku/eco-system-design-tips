## Utiliser la délégation d'évènements

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  41    | 46  | 44  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM   |

### 説明

La délégation d’événements permet de ne pas surcharger la mémoire du navigateur en instanciant un seul écouteur pour plusieurs élé- ments du DOM (Document Object Model).

### 例

L’élément du DOM dont l’ID est t est déclaré comme le délégué. 
Il intercepte les événements de tous ses fils.
```html
<head>
    // ...
    <style type="text/css">
     #t { border: 1px solid red } #t1 { background-color: pink; }
    </style>
    <script type="text/javascript">
        function modifyText(new_text) {
            var t2 = document.getElementById("t2");
            t2.ﬁrstChild.nodeValue = new_text;
        }
        function load() {
            var el = document.getElementById("t");
            el.addEventListener("click", function() {
              modifyText("four")
            }, false); 
        }
    </script>
</head>
<body onload="load();">
    <table id="t">
        <tr><td id="t1">one</td></tr>
        <tr><td id="t2">two</td></tr>
    </table>
    <!-- ... -->
</body>
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'écoutes (listeners) d'un même événement sur plusieurs éléments HTML, faisant partie d'un même groupe, sans utiliser la délégation d'événements  | 0  |