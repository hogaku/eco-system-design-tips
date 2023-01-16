## Installer le minimum requis sur le serveur

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   74   | 89  | 91  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 4. 制作 | データセンター | Administrateur systèmes |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 4 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / RAM / ストレージ  |

### 説明

Désinstaller tous les services qui ne sont pas indispensables au bon fonctionnement du site. Cette mesure supprimera nécessairement des daemons (agents et services fonctionnant en permanence en mémoire), qui sont consommateurs de ressources, notamment en cycles CPU et en mémoire vive.

### 例

Privilégier une installation « manuelle » du serveur (LAMP + CMS, par 例) plutôt qu’une distribution avec une surcouche de type cPanel ou Plesk. Et si une surcouche d’administration est nécessaire, préférer des solutions légères comme Webmin.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de services non nécessaires au fonctionnement du site exécutés sur le système d'exploitation  |  0 |
