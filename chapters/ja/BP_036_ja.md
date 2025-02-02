## ベクター画像の最適化

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   1050   | 22  | 36  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. 利用 | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

モダンなブラウザはすべて、XMLで記述されたベクターのセットに基づいているベクター画像形式であるSVG（Scalable Vector Graphics）と互換性があります。 
SVG画像には、質の劣化なく無限に縮小および拡大できるという利点と、ほとんどの場合、ビットマップ画像よりも軽いという利点の2つの利点があります。

しかし、ほとんどのSVG画像には、作成に必要だった多くのメタデータが含まれています。
例えば、レイヤー（layer）の情報、コメントなどが画像の編集には必須ですが、表示には不要です。
したがって、ファイルのサイズを削減するためにこれらを削除する考えが生まれました。
Compressor.io、SVG Cleaner、SVGOなどの最小化および最適化ツールが多数利用できます。

gzipを介した圧縮率は、画像の複雑さによって異なりますが、常に高いです。
これはテキストを圧縮するためで、一般に75％から80％の範囲の比率に達します。


### 例

潜在的な利益：最大75％のKo削減。

1 KoのSVGファイルでSVGOをテストしました。 これにより、そのサイズが36％削減され、1101バイトから700バイトになりました。 転送前にファイルをgzipで圧縮すると、重さが498バイトになり、初期サイズの半分未満（45％）になり、表示の品質は全く損なわれません。


### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| 最適化されていない画像の数  |  0% |
