## No.5 ウェブに適応したシンプルですっきりしたデザインを推奨

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  5    | 6  | 5  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 2. 設計 | ユーザ/端末 | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| プロセッサ  / RAM / ネットワーク   |

### 説明

Tout design d'interface ou webdesign doit être réfléchi en amont, en prenant en compte :
- les besoins de l'ユーザ (voir la bonne pratique "Optimiser le parcours ユーザ")
- les heuristiques d'ergonomie (Bastien et Scapin, Nielsen, etc.)
- les contraintes techniques
- les bonnes pratiques d'éco設計
- et de préférence les bonnes pratiques d'accessibilité

**Privilégiez un design simple et épuré réalisable uniquement en HTML5 et CSS3.**

### 例

**説明 :** Certains sites contiennent des images encadrées, non contrastées et non lisibles (RGAA) et créent une surcharge mentale non nécessaire (2.2. Densité Informationnelle de Scapin et Bastien). Téléchargées, elles ne sont pourtant pas visibles sur mobile (éco設計). On peut parfois soulever l'incohérence entre signalétique et colorimétrie (1.2.2. Groupement/Distinction par le Format de Scapin et Bastien).

**推奨 :** Supprimer les images de fond et ajouter un glyphe (Préférer les glyphes aux images, bonne pratique d'éco設計) avec une colorimétrie cohérente si un groupement doit avoir lieu.

### 検証原理

| 検証項目 ...     | 次の値以下である   |  
|-------------------|:-------------------------:|
|   必要以上にデザインがロードされているページ  |  0 |
