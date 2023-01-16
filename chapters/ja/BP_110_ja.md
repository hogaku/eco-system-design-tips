## N'utiliser que des fichiers double opt-in

### 識別子

| GreenIT |  V2  |  V3  |  V4  |
|:-------:|:----:|:----:|:----:|
|  103    | 111  | 110  |      |

### カテゴリ

| Cycle de vie |  Tiers  |  Responsable  |
|:---------:|:----:|:----:|
| 2. Conception | Utilisateur/Terminal | PO/AMOA |

### 効果

| Degré de priorité |      Mise en oeuvre       |  Impact écologique    |
|:-------------------:|:-------------------------:|:---------------------:|
| 2 | 3 | 2 |

|Ressources Economisées                                      |
|:----------------------------------------------------------:|
|  Processeur / Réseau / Requêtes |

### 説明

Le double opt-in est une pratique marketing consistant à demander le consentement du prospect, généralement par accord électronique en cochant une case, puis à faire valider ce consentement par l’envoi d’un e-mail de confirmation à l’adresse indiquée. L’état de l’adresse devient double opt-in lorsque le destinataire a cliqué sur un lien contenu dans le message reçu. Ce procédé permet de valider l’adresse et de vérifier que la personne qui l’a fournie en est bien propriétaire. Cette double vérification confirme ainsi l’engagement du prospect pour recevoir une newsletter, souscrire à un abonnement, etc.

Il est donc recommandé d’utiliser la pratique du double opt-in pour réduire significativement :
 - le nombre d’e-mails sans véritable impact (et donc la bande passante consommée) ;
 - la charge du serveur SMTP lors de l’envoi de l’e-mailing ;
 - la charge du serveur lors du traitement des désabonnements.

### 例

Dans le cas d’un opérateur téléphonique ou d’une banque, laisser aux clients le choix parmi un catalogue de produits ou de services pour lesquels ils acceptent d’être sollicités.

### 検証原理

| Le nombre ...     | est inférieur ou égal à   |  
|-------------------|:-------------------------:|
|  de fichiers de contacts en opt-out | 0  |
