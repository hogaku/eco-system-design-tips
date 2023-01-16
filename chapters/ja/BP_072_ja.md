## Éviter d'effectuer des requêtes SQL à l’intérieur d’une boucle

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   55   |  71 | 72  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | データセンター | Architecte Logiciel/Développeur |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|   プロセッサ  / RAM / ネットワーク  |

### 説明

Les requêtes SQL à l’intérieur d’une boucle posent de gros problèmes de performance, et ce d’autant plus si le(s) serveur(s) SQL n’est (ne sont) pas sur la machine locale. En effet, ces serveurs sont optimisés pour traiter plusieurs sélections, insertions ou modifications dans une seule requête ou une seule transaction.

Mal utilisées, ces requêtes consomment inutilement des cycles CPU, de la mémoire vive et de la bande passante.

### 例

Ne pas écrire :
```php
foreach ($userList as $user) {
    $query = 'INSERT INTO users (ﬁrst_name,last_name) VALUES("'. $user['ﬁrst_name'] .'", "'. $user['last_ name'] .'")';
    mysql_query($query);
}
```
mais plutôt :
```php
$userData = array();
foreach ($userList as $user) {
    $userData[] = '("'. $user['ﬁrst_name'] .'", "'.
    $user['last_name'] .'")';
}
$query = 'INSERT INTO users (ﬁrst_name,last_name) VALUES'. implode(',', $userData); mysql_query($query);
```

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de requêtes SQL à l'intérieur d'une boucle  |  0 |
