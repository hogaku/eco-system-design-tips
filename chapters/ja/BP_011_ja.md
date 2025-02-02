## No.11 CMSを利用したカスタマイズ開発の推進

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   2   | 12  | 11  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | データセンター | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ネットワーク  |

### 説明

フレームワークを使用するか、カスタム開発を行うことで、特定のプロセスの最適化においてより大きな自由度を享受することができます。
CMS（コンテンツ管理システム）は実際にはより制約があり、その主な目的である柔軟性を達成するために、時にリソースを多く消費する動作を強制します。

たとえば、拡張機能の管理のために、CMSは「フック」と呼ばれるシステムを使用し、これは通常、関数の命名規則に基づいています。
これらの拡張機能の新しい関数の存在のテストは、リソースを消費するプロセスであり、カスタム開発では関数の存在を「発見」する必要がないため、これらの関数はすでに既知です。あまりにも多くの拡張機能を使用すると、多くのリソースを消費し、サイトの速度を遅くすることがあります。

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| CMSに基づくサイトの拡張機能の数  | 3  |
