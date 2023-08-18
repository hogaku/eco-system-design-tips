## No.22 ロードするCSSの数を減らす

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   10   | 25  | 22  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / クエリ  |

### 説明

HTTPクエリを増やさず、ブラウザ側のレンダリングを簡素化するために、CSSの数を制限します。全ての共通要素に対して共通のスタイルシートを使用し、ターゲット解像度またはメディアクエリごとに1つのファイルを使用します。

注意：これらのファイルをCSSファイル自体での@importディレクティブではなく、直接HTMLコードに組み込む必要があります。このように分割すると、ユーザーの端末が対応するものを選び、必要のないファイルのロードを優先順位の低いものにします。

必要に応じて、特定のコンポーネント用のCSSファイルをコンテキストに応じてロードすることもできます。

### 例

```
<link rel='stylesheet' id='css-css'  href='communs.css' type='text/css' media='all' />
<link rel='stylesheet' id='css-xs-css'  href='petits-ecrans.css' type='text/css' media='(max-width: 959px)' />
<link rel='stylesheet' id='css-sm-css'  href='tablettes.css' type='text/css' media='(min-width: 768px)' />
<link rel='stylesheet' id='css-mdlg-css'  href='grands-ecrans.css' media='(min-width: 960px)' />
<link rel='stylesheet' id='css-print-css'  href='print.css' type='text/css' media='print' />
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| CSSファイルの数  | 10  |
