## No.1 不要な機能の削除

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   109   | 1  | 1  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 1. 仕様 | ユーザ/端末 | PO/AMOA |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 5 | 4 | 5 |

|リソース                                      |
|:----------------------------------------------------------:|
|プロセッサ  / RAM / ストレージ / ネットワーク / クエリ    |

### 概要
Plusieurs études (Cast Software et Standish Group, notamment) démontrent que 70 % des fonctionnalités demandées par les ユーザs ne sont pas essentielles et que 45 % ne sont jamais utilisées. En réduisant la couverture et la profondeur fonctionnelle de l’application, on abaisse son coût de développement initial, sa dette technique et les impacts environnementaux associés. 

On diminue ainsi mécaniquement l’infrastructure nécessaire à son exécution. Par ailleurs, à niveau ergonomique constant, plus l’application est pauvre fonctionnellement, plus elle sera simple à utiliser. Il faut donc réduire le plus possible la couverture fonctionnelle de l’application, en la centrant sur le besoin essentiel de l’ユーザ.

Détecter une fonctionnalité non essentielle est possible au moment de l'analyse de l'expression du besoin. La méthode MoSCoW, des ateliers, des wireframes (maquettes fonctionnelles) ou des prototypes avec tests ユーザs permettent de vérifier l'utilité d’une fonctionnalité en amont de son développement. 


### 例
Les succès récents du Web – Google, Twitter, WhatsApp, Pinterest, Instagram, etc. – fournissent un seul service et misent sur une grande sobriété fonctionnelle.

Se poser, au moment de l'analyse de l'expression du besoin, la question : « Que se passe-t-il si on ne l’a pas ? ».

Respecter le principe YAGNI (You Ain't Gonna Need It) de l’extreme programming : développez quand vous avez effectivement besoin d’une fonctionnalité, pas lorsque vous imaginez en avoir besoin.

### 検証原理


| 検証項目 |     次の値以下である   |  
|-------------------|:-------------------------:|
| de fonctionnalités dont l'utilité n'a pas été vérifiée avec un panel d'ユーザs avant développement |  0 % |
