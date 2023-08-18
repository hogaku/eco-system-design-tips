## Compresser les fichiers CSS, JavaScript, HTML et SVG

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   86   |  80 | 78  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 3. 実現 (製造 / 実装) | ネットワーク | ソフトウェアアーキテクト/開発者 |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 4 | 3 | 4 |

|リソース                                      |
|:----------------------------------------------------------:|
| ネットワーク  |

### 説明

Compresser les feuilles de style CSS, les bibliothèques JavaScript ainsi que les fichiers HTML pour limiter l’utilisation de la bande passante et améliorer les temps de chargement.
L’algorithme GZIP est un standard de la compression coté serveur, il permet de compresser à la volée les ressources avant de les envoyer aux clients.
Plus récemment, BROTLI a été popularisé avec des performances accrues, il est supporté par tous les navigateurs les plus répandus.
### 例

Pour utiliser `BROTLI` dans Apache, il suffit d’ajouter la configuration suivante :

```
# compress html, text, xml, css, javascript
AddOutputFilterByType BROTLI_COMPRESS text/html text/plain text/xml text/css text/javascript application/javascript

# Or, compress certain ﬁle types in a specific directory:
<Directory "/your-directory">
    AddOutputFilterByType BROTLI_COMPRESS text/html
</Directory>
```

Le serveur web NGINX gère par défaut la compression GZIP mais uniquement pour les fichiers HTML. 
Pour l'activer sur les images et autres ressources se référer à cette page: https://www.digitalocean.com/community/tutorials/how-to-improve-website-performance-using-gzip-and-nginx-on-ubuntu-20-04

Pour installer et configurer brotli sur NGINX, voir https://github.com/google/ngx_brotli.
### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| de fichiers CSS, JavaScript,  HTML et SVG non compressés  |  0 |
