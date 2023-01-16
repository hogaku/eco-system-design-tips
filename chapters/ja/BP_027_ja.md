## Fournir une CSS print

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   16   | 30  | 27  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ユーザ/端末 | UX/UI Designer |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 4 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  ネットワーク  |

### 説明

Outre le service apporté à l’internaute, cette feuille de styles réduit le nombre de pages imprimées, 
et donc indirectement l’empreinte écologique du site web. La plus dépouillée possible, elle doit proposer une police
de caractères économe en encre (Century Gothic, par 例). Pensez aussi à masquer le header, le footer, le menu, le sidebar,
supprimer toutes les images sauf celles du contenu, etc.

### 例

Cette CSS print « nettoie » la page affichée à l’écran afin de proposer une impression épurée :
```css
body {
background-color :#ﬀf; font-family :Serif; font-size :15pt;
}
#page { margin :0;
border :none;
}
#banner, #menuright, #footer { display :none;
}
h1#top { margin :0;
padding :0;
text-indent :0; line-height :25pt; font-size :25pt;
} (...)
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de CSS print manquante  |  1 |
