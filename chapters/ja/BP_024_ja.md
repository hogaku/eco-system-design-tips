## No.24 効果的なCSSセレクタの書き方 

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  13    | 27  | 24  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 2 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ   |

### 説明

Privilégier les sélecteurs basés sur des ID ou des classes. Ils seront ainsi filtrés plus rapidement, économisant des cycles CPU à la machine interprétant les règles.

### 例

Ne pas écrire :
```css
treeitem[mailfolder="true"] > treerow > treecell {…}
```
mais plutôt :
```css
.treecell-mailfolder {…}
```

Ne pas écrire :
```css
treehead > treerow > treecell {…}
```
mais plutôt :
```css
.treecell-header {…}
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de sélecteurs CSS qui n'utilisent ni d'id, ni de class et ni d'attribut  |  0 |
