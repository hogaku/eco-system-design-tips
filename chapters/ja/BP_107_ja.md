## Compresser les documents

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  97    | 108  | 107  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. Utilisation | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 2 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク / ストレージ  |

### 説明

Compresser tous les documents pouvant être téléchargés depuis une page web, sauf si la compression n’apporte pas un gain évident (par 例, cas d’un PDF parfaitement optimisé pour le Web).

### 例

Un document au format DOC pesant 7,8 Mo ne pèse plus que 5,5 Mo une fois compressé, soit un gain de 30 % (compression WinZip par défaut).
Types de fichiers bureautiques pouvant être compressés facilement :
 - documents issus d’un traitement de texte (.doc, .docx, .rtf, .txt, etc.) ;
 - documents issus d’un tableur (.xls, .xslx, etc.) ;
 - présentations (.ppt, .pptx, etc.) ;
 - documents PDF ; 
 - contenus multimédias (images, audio et vidéo).

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de documents non compressés   | 0  |
