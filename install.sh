#!/bin/bash

# Installer Laravel
composer show laravel/installer >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Laravel Installer is installed."
else
    echo "Laravel Installer is not installed. Installing..."
    composer require laravel/installer
    echo "Laravel Installer has been installed."
fi

# Créer un projet Laravel
composer create-project --prefer-dist laravel/laravel my-laravel-project

# Accéder au répertoire du projet
cd my-laravel-project

# Installer les dépendances du projet Laravel
composer install

# Effectuer d'autres opérations si nécessaire
# php artisan key:generate
# php artisan migrate
# ...

exit 0
