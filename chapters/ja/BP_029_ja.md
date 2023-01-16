## Favoriser les polices standards

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

Cependant si vous avez besoin d'une police particulière pour votre service numérique, même si c'est une Api font (google font, adobe font, etc.), vous devez :
- Héberger vous-même la font
- Utiliser un faux-gras via la propriété css ```-webkit-text-stroke``` si possible
- Préférer une variable font si vous avez besoin de plus d'une font d'une police (ex: regular, bold, etc.)
- Optimiser la font en l'allégeant des caractères non nécessaires (例: un site en français n'a besoin que de caractères latins, l'alphabet cyrillique peut donc être supprimé)

Si vous avez des pictogrammes ou illustrations monochromes (voir la bonne pratique : Préférez les glyphes aux images) et si les droits d'utilisations de la font le permettent, incorporer les nouveaux glyphes directement dans la font.

### 例

Voici un tableau comparatif de poids des fonts de la police Oswald :
| | Regular  | Regular + bold         | Variable | Latin Regular |  Latin Regular + Latin Bold |  Latin Variable |
|---:| :---------------: |:---------------:|:------------:| :-----:| :-----:| :-----:|
|Poids|37.6kb|76.9kb|66kb|16kb|32.5kb| ?

### Solution Alternative

Vos ユーザs peuvent faire le choix, via les préférences de leurs navigateurs, de demander aux sites web, utilisant le media query `prefers-reduced-data` qu'ils visitent d'optimiser les requêtes ネットワーク réalisées.

Dans l'例 ci-dessous, nous ne téléchargeons que la font `Montserrat` si et seulement si l'ユーザ n'a pas défini de préférence. A contrario, la font `Arial` sera utilisée sans téléchargement de la `Montserrat`.

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

Pour plus d'informations sur la media query `prefers-reduced-data`: [https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-data](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-data)

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de polices téléchargées  | 2  |
