<?php

echo "Création d'un projet Laravel avec dépendances...\n";

$laravelInstaller 		= 'composer create-project --prefer-dist laravel/laravel laravel-banking-package-project';
$otherPackageInstaller 	= 'composer require torskint/auto-translate';

echo shell_exec($laravelInstaller);
echo shell_exec($otherPackageInstaller);

echo "Projet Laravel créé avec succès.\n";