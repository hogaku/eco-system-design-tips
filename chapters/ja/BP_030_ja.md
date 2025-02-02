## 画像よりもグリフを優先

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  20    |  18 | 30  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| ストレージ / ネットワーク / クエリ  |

### 説明

グリフは、オペレーティングシステムのような文字フォントに含まれる特定の印刷文字で、モノクロのイメージ（シェブロン、三角形、点、四角、星座の記号など）やイラストの代わりとして使用でき、以下のような利点があります：
- 重量を節約して帯域幅を削減する
- リクエストの数を削減する
- 特に多くのSVGのピクトグラムとともにDOMの複雑さを削減する

### 例

視覚的に以下を含むランディングページを最適化する場合：

![例 フォントフォージで作成されたランディングページを示す例](https://github.com/florinesueur/images/blob/main/vue-font-forge.svg)
*フォントフォージで作成されたランディングページを示す例*

ピクトグラムとベクターイラストを[Font Forge](https://fontforge.org/en-US/)を通じてアイコンフォントに組み込むことで、容量の91％の削減が実現されました。

詳細については、次のリンクをご覧ください： [https://coding.smashingmagazine.com/2011/03/19/styling-elements-with-glyphs-sprites-and-pseudo-elements](https://coding.smashingmagazine.com/2011/03/19/styling-elements-with-glyphs-sprites-and-pseudo-elements)

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| グリフ（文字フォントのシンボル）で置き換えられる可能性のある画像 | 0  |
