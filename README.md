# Gestion d'Inventaire

Une application web développée avec Laravel pour gérer les produits, catégories, mouvements de stock et utilisateurs dans un système d'inventaire.

## Fonctionnalités

- **Gestion des utilisateurs** : Connexion/déconnexion avec rôles (Administrateur, Employé).
- **Gestion des produits** : CRUD (nom, description, prix, quantité, catégorie) + recherche simple.
- **Gestion des catégories** : Ajout, modification, suppression.
- **Mouvements de stock** : Entrées et sorties avec mise à jour automatique des quantités.
- **Rapports rapides** : Liste des produits en rupture (quantité < 10) et export PDF.

## Pré-requis

- PHP >= 8.1
- Composer
- Node.js et npm
- PostgreSQL
- `pg_dump` (pour les sauvegardes futures)

## Installation

1. Cloner le projet :
   ```bash
   git clone https://github.com/khyme667/gestion_inventaire.git
   cd gestion_inventaire

Installer les dépendances :
composer install
npm install

Configurer .env :

Copiez .env.example vers .env et configurez PostgreSQL
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=db_name
DB_USERNAME=votre_utilisateur
DB_PASSWORD=votre_mot_de_passe


migrer la base :
php artisan migrate

compile et lance le serveur
npm run dev
php artisan serve

Crédits
Développé par Tsitana Iloharaoke Khyme.