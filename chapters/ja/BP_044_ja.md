## イベントデリゲーションの使用

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  41    | 46  | 44  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM   |

### 説明

イベントの委譲は、DOM（Document Object Model）の複数の要素に対して単一のリスナーをインスタンス化することでブラウザのメモリを過剰に消費することなく、処理を行う方法です。

### 例

DOMのIDが「t」である要素は、デリゲートとして宣言されます。
この要素は、そのすべての子要素からのイベントを傍受します。
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
| イベントの委譲を使用せずに、同じグループに属する複数のHTML要素上で同じイベントのリスナー（listeners）の数  | 0  |
