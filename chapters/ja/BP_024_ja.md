## Écrire des sélecteurs CSS efficaces

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  13    | 27  | 24  |      |

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
|  Processeur  |

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

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
| de sélecteurs CSS qui n'utilisent ni d'id, ni de class et ni d'attribut  |  0 |
