## Optimiser et générer les médias avant importation sur un CMS

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   99   | 58  | 58  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. Utilisation | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 4 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ネットワーク / ストレージ  |

### 説明

Les CMS les plus connus proposent de nombreuses fonctionnalités pour optimiser (compresser, redimensionner, etc.) et générer vos médias (images, pdf, documents, audios et vidéos) souvent via l'installation de plugins ou extensions. Parfois payants, mais surtout consommateurs en terme de CPU, de mémoire vive, de ネットワーク et de stockage, ces plugins n'évitent pas l'importation du média disproportionné (taille, dimension et qualité) ou inadapté par son format par rapport à son utilisation finale.

### 例

Quelques outils pouvant vous aider à optimiser vos médias sur votre ordinateur :
- [FFmpeg](https://www.ffmpeg.org/)
- [Any Video Converter](https://www.any-video-converter.com/products/video-converter-free/)
- [Xnview](https://www.xnview.com/fr/)
- [Gimp](https://www.gimp.org/)
- [Inskape](https://inkscape.org/fr/)
- [PDFedit](https://sourceforge.net/projects/pdfedit/)
- etc.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de contenus optimisés directement par le CMS   |  0 |
