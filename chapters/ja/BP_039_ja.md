## JavaScript / CSSによるアニメーションの回避

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   810   | 48  | 39  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | ユーザ/端末 | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 5 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM  |

### 説明

JavaScript/CSSのアニメーションは、CPUのサイクルとメモリ消費の点で非常に高価になることがあります。
それらはすべて、リソースにとって非常に高価な（再）ペイント/（再）フローというタイプのアクションを引き起こします。したがって、できるだけアニメーションを避け、それらが不可欠な場合にのみ使用する必要があります。

Si vous ne pouvez pas vous passer d’une animation, limitez-vous aux propriétés CSS3 `opacity` et `transform`, et aux fonctions associées `translate`, `rotate`, `scale` de `transform`. Ces deux propriétés sont automatiquement optimisées par le navigateur, et l’animation peut être prise en charge par le processeur graphique (GPU). Le site [www.csstriggers.com](https://csstriggers.com/) liste les actions sur le DOM déclenchées par une animation.

アニメーションなしでは済ませられない場合は、CSS3の `opacity` および `transform` プロパティ、および `transform` の `translate`、 `rotate` 、`scale` 関数に制限してください。これらの2つのプロパティはブラウザによって自動的に最適化され、アニメーションはグラフィックプロセッサ（GPU）によって処理されることがあります。サイト [www.csstriggers.com](https://csstriggers.com/)は、アニメーションによって引き起こされるDOM上のアクションを一覧表示します。

アニメーションによって消費されるリソースを最小限に抑えるために、 `will-change` 命令を使用してアニメーションが発生することをブラウザに事前に知らせることができます。

詳細についてはこちら：
https://web.dev/animations-guide/

### 例

```css
.box {
    will-change: transform, opacity;
}
```
### 代替ソリューション

ユーザーのブラウザの設定とメディアクエリ `prefers-reduced-motion` を通じて、アニメーションを再生するかどうかをユーザーに選択させることもできます。アニメーションは、ユーザーが設定を定義していない場合のみ再生されます。

```css
@media (prefers-reduced-motion : no-preference ) {
  .animation {
    animation: fadeIn 4s ease;
  }
}
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| 1ページあたりのJS/CSSのアニメーション数 |  2 |
