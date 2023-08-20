## 標準フォントの利用

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   19   | 17  | 29  |      |

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
|  ストレージ / ネットワーク / クエリ  |

### 説明

Péférer les polices standards, car elles sont déjà présentes sur l’ordinateur de l’ユーザ, qui n’a donc pas besoin de les télécharger. 
On économise ainsi de la bande passante, tout en accélérant l’affichage du site. Ces polices standards sont listées sur [https://systemfontstack.com/](https://systemfontstack.com/), par 例.
標準のフォントを好むことが望ましい。これらはすでにユーザーのコンピュータに存在しているため、ダウンロードする必要がありません。これにより帯域幅を節約し、サイトの表示を高速化します。これらの標準フォントは[こちら](https://systemfontstack.com/)で一覧されています。


しかし、特定のフォントがデジタルサービスに必要な場合、たとえばApiフォント（Googleフォント、Adobeフォントなど）であっても、次のことを行う必要があります：
- フォントを自分でホスティングする
- 可能であれば、CSSプロパティ ```-webkit-text-stroke``` を使用して偽の太字を使用する
- より多くのフォントスタイル（例：レギュラー、ボールドなど）が必要な場合は、可変フォントを好む
- 必要のない文字を削除してフォントを軽量化する（例：フランス語のサイトではラテン文字だけが必要なため、キリル文字を削除することができる）

必要のない文字を削除してフォントを軽量化する（例：フランス語のサイトではラテン文字だけが必要なため、キリル文字を削除することができる）

### 例

以下は、Oswaldフォントのフォントの容量の比較表です：
| | Regular  | Regular + bold         | Variable | Latin Regular |  Latin Regular + Latin Bold |  Latin Variable |
|---:| :---------------: |:---------------:|:------------:| :-----:| :-----:| :-----:|
|容量|37.6kb|76.9kb|66kb|16kb|32.5kb| ?

### 代替解決策

ユーザーは、ブラウザの設定を通じて、`prefers-reduced-data` メディアクエリを使用するウェブサイトに対して、行うネットワークリクエストの最適化を選択することができます。

以下の例では、ユーザーが特定の設定を行っていない場合にのみ、`Montserrat` フォントをダウンロードします。逆に、`Montserrat` をダウンロードせずに`Arial` フォントが使用されます。

```css
@media (prefers-reduced-data: no-preference) {
    @font-face {
        font-family: Montserrat;
        font-style: normal;
        font-weight: 400;
        src:  url('fonts/montserrat-latin-regular.woff2');
    }
}

body {
  font-family: Montserrat, Arial;
}
```

`prefers-reduced-data` メディアクエリに関する詳細情報は[こちら](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-data)で見ることができます。

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| ダウンロードされたフォント数  | 2  |
