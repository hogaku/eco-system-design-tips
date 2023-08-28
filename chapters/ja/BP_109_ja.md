## Limiter les e-mails lourds et redondants

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|   102   | 110  | 109  |      |

### カテゴリ

| ライフサイクル |  サードパーティ  |  担当者  |
|:---------:|:----:|:----:|
| 5. 利用 | ユーザ/端末 | ユーザ |

### 効果

| 優先度 |      実装難易度       |  エコロジーへの影響度    |
|:-------------------:|:-------------------------:|:---------------------:|
| 3 | 3 | 3 |

|リソース                                      |
|:----------------------------------------------------------:|
|  プロセッサ  / ネットワーク / クエリ  |

### 説明

Les e-mails sont sauvegardés et dupliqués sur les disques du fournisseur d'e-mail. 
Il convient de raisonner l'envoi d'e-mail automatiques (ex: newsletters, gestion client, suivi de commande) en limitant leur nombre, les pièces jointes et le nombre de destinataires.

### 例

Newsletters:

- Définir la fréquence d'envoi au strict nécessaire
- Envoyer aux seules personnes essentielles à la newsletter et celles le souhaitant (liste d'inscription, ciblage client)
- Envoyer des mails de désinscription aux clients n'ayant pas ouvert les x newsletters précédentes
- Éviter les pièces jointes et préférer les liens directs
- Éviter les images et à défaut limiter leur taille

Gestion client:

- Réduire à un seul envoi pour les commandes internet (commande, confirmation de paiement, expédition, satisfaction, relance, satisfaction livraison, facture, ...)
- Ne pas envoyer de pièce jointe si cela n'est pas nécessaire : lien vers le document sur le compte client par 例.

### 検証原理

| 検証項目     | 次の値以下である   |  
|-------------------|:-------------------------:|
| d'emails avec pièce jointe  | 0  |
