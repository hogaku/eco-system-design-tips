## Grouper les déclarations CSS similaires

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   14   | 28  | 25  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 3. Réalisation (fabrication / développement) | Réseau | Architecte Logiciel/Développeur |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 2 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Réseau  |

### 説明

Lorsque plusieurs éléments du DOM (Document Object Model) ont des propriétés CSS communes,
les déclarer ensemble dans la même feuille de styles. Cette méthode permet de réduire le poids de la CSS.

### 例


Ne pas écrire :
```css
h1 {
background-color: gray; color: navy;
}

h2 {
background-color: gray; color: navy;
}

h3 {
background-color: gray; color: navy;
}
```

mais plutôt :
```css
h1, h2, h3 {
background-color: gray; color: navy;
}
```

Si vous souhaitez vous assurer que cette règle est bien respectée, vous pouvez mettre en place le module [stylelint](https://stylelint.io/) 
dans votre projet (`devDependencies`) et utiliser la règle `shorthand-property-no-redundant-values`

Vous trouverez la liste complète de ces propriétés raccourcies sur le site [MDN](https://developer.mozilla.org/fr/docs/Web/CSS/Propri%C3%A9t%C3%A9s_raccourcies)

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
|  de déclaration CSS similaires non regroupées | 1  |
