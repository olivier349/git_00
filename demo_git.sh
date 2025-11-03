#!/bin/bash

# Script démo Git - montre les bases + bonnes pratiques

# Nettoyage si dossier git-demo existe déjà
rm -rf git-demo
mkdir git-demo && cd git-demo

echo "Initialisation du dépôt Git..."
git init

echo "Création d'un fichier README.md"
echo "# Projet Démo Git" > README.md

echo "Ajout du fichier à l'index"
git add README.md

echo "Premier commit - ajout README"
git commit -m "docs(readme): ajout du README initial"

echo "Création d'une branche feature-login"
git checkout -b feature-login

echo "Modification dans feature-login"
echo "fonctionnalité login" > login.txt
git add login.txt
git commit -m "feat(login): ajout de la fonctionnalité de login"

echo "Retour sur main"
git checkout main

echo "Fusion de la branche feature-login dans main"
git merge feature-login --no-ff -m "feat(login): fusion branche feature-login"

echo "Visualisation de l'historique compact"
git log --oneline --graph --all

echo "Modification rapide non commitée"
echo "Modif rapide" >> README.md

echo "Mise de côté des changements non commités avec stash"
git stash
echo "Passage à une autre branche..."
git checkout -b hotfix
echo "Travail sur hotfix"
echo "Correction rapide" > fix.txt
git add fix.txt
git commit -m "fix(hotfix): correction rapide"

echo "Retour à main et remise du stash"
git checkout main
git stash pop

echo "Fin de la démo"
