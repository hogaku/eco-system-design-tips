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

主要なソーシャルメディアネットワーク（Facebook、Twitter、Pinterestなど）は、ウェブページに「共有する」ボタンと「いいね」のカウンターを表示するためのプラグインを提供しています。これらのJavaScriptプラグインはリソースを大量に消費し、多くのクエリと重いファイルのダウンロードが必要です。これらのプラグインよりも、共有ページへのHTMLでの直接リンクを選ぶ方が良いでしょう。これらのリンクは手動で生成することができます（以下参照）または、https://www.sharelinkgenerator.com/ などのツールを使用して生成することができます。

### 例

各ソーシャルネットワークは、メンバーがウェブページを共有できるURLを持っています：
- Facebook共有：https://www.facebook.com/sharer/sharer.php?u=XXXXX
- Facebookいいね：https://www.facebook.com/plugins/like.php?href=XXXXX
- Twitter：https://twitter.com/intent/tweet?url=XXXXX
したがって、以下のようなコードで公式ボタンが行うように、共有ポップアップを開くボタンを簡単に追加することができます。

```html
<button type = "button" onclick = "window. open('https://www.facebook.com/ sharer/sharer.php?u=XXXXX', '', 'menubar = no, toolbar = no, resizable = yes, scrollbars = yes, height = 500, width = 700')">
    Je partage cette page sur Facebook
</button>
```
さらに詳しくはこちら：
https://www.nuweb.fr/736


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| 外部ライブラリ  | 0  |
