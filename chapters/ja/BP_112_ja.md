## Adapter les sons aux contextes d'écoute

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   95   | 113  | 112  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. 利用 | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 2 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
| ネットワーク |

### 説明

Les fichiers audio peuvent être volumineux et consommateurs de bande passante. Aussi est-il indispensable d’en optimiser le poids. Privilégier 3 formats couvrant les 3 grandes plates-formes (Windows, Mac OS X et Linux) :
 - MP3 (MPEG-1 Audio Layer 3) ;
 - AAC (Advanced Audio Coding) ;
 - Vorbis.
Ces formats appliquent des algorithmes de compression très évolués permettant des gains de poids significatifs.

### 例

Des encodeurs comme LAME permettent de convertir au format MP3 des fichiers audio non compressés, mais également de jouer sur le taux d’échantillonnage, afin de gagner encore du poids, au détriment de la qualité audio. À tester sur chaque fichier sonore.

Dans le cas d’un fichier de référence WAV son.wav de 63 128 octets, sa conversion en MP3 donne :
 - un fichier son-128.mp3 de 10 823 octets (128 kb/s), 6 fois plus léger ;
 - un fichier son-64.mp3 de 6 508 octets (64 kb/s), 10 fois plus léger.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de codec audio propriétaires (non libres) et de pistes audio dont le ratio poids en mega octet/durée en minute est superieur a 1  | 0  |
