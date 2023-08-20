## レイジーロードの使用

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   1010   |   |  37 |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 5 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / ネットワーク  |

### 説明
インターネット利用者がウェブページの全体を閲覧しない場合、デフォルトでは訪れていないエリアにあるリソース（画像、ビデオ、iframeなど）が無駄にロードされます。
これを防ぐために、画面上でその場所が表示されるまで要素をロードしない「遅延ロード（lazy loading）」というテクニックを使用することができます。

HTML5では、画像やiframeにloading属性を追加して、画面上に表示される画像のみをブラウザがダウンロードするようにすることが可能です。
しかし、この属性は非常に新しいため、古いバージョンのブラウザではサポートされない場合があります。
より高い互換性を確保するために、以下のような非常に軽量なJavaScriptのミニライブラリを使用して画像をlazy-loadすることもできます：
    - [LOZAD](https://cdn.jsdelivr.net/npm/lozad) 1,9 Ko (gzip)
    - [Vanilla-lazyload](https://cdn.jsdelivr.net/npm/vanilla-lazyload/dist/lazyload.min.js) 3,5 Ko (gzip)

### 例
この例では、画像とiframeがブラウザによって自動的にlazy-loadされます。
画面上に表示されるべき画像はダウンロードされて表示され、水面下にある場合はダウンロードされません。

```html
<img src="image.jpg" alt="..." loading="lazy">
<iframe src="video-player.html" title="..." loading="lazy"></iframe>
```

さらに詳しく知りたい方は以下を参照してください :
 - [MDN Web Docsによる遅延ロードについて](https://developer.mozilla.org/en-US/docs/Web/Performance/Lazy_loading)
 - [Browser-level image lazy-loadingについて](https://web.dev/browser-level-image-lazy-loading/)
 - [Lazy-loading videoについて](https://web.dev/lazy-loading-video/)

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| 水面下の画像、iframe、ビデオがlazy loadingなしで呼び出される数  |  0% |
