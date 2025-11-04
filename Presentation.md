<!-- ---
marp: true
theme: default
paginate: true
title: Présentation Git – Bases et Bonnes Pratiques
--- -->

# Présentation Git  
### Bases et Bonnes Pratiques

J’ai réalisé cette présentation pour les nouveaux arrivants dans notre école.  
Le but est de présenter les **fondamentaux de Git** et les **bonnes pratiques** à adopter dès le début.

---

# Pourquoi cette présentation ?

- Au début de 42, il y a déjà beaucoup à apprendre.  
- Git peut paraître intimidant au départ.  
- L’objectif : vous rendre à l’aise avec les bases, les branches et les commits.

---

# Objectif du jour

- Comprendre ce qu’est Git  
- Savoir pourquoi il est essentiel en équipe  
- Apprendre les commandes de base  
- Adopter la convention de commits *Courteous*  
- Connaître les bonnes pratiques

---

# C’est quoi Git ?

Git est un **système de gestion de versions** (*Version Control System*).  
Il enregistre un **instantané** du projet à chaque *commit*.

## Exemple visuel


v1 ---- v2 ---- v3 ---- v4
commit commit commit

Chaque version (*commit*) correspond à un état précis du projet 📸

# Workflow Git Staging

![Workflow de staging Git](./img/git-staging-workflow.jpg)
---

# Travailler à plusieurs

Git permet à plusieurs personnes de travailler sur un même projet via les **branches**.

## Exemple simplifié

main ----A----B----C

D----E (feature)

Une fois la fonctionnalité terminée :

main ----A----B----C----D'----E'


Les commits *D* et *E* ont été fusionnés dans `main`.

---

# Branches Git et Fusion (Merge)

![Branches et fusion Git](./img/git-branches-merge.jpg)

---



---

# Pourquoi Git est essentiel ?

- Identifier qui a fait quelle modification  
- Travailler sans écraser le code des autres  
- Revenir facilement en arrière  
- Favoriser la collaboration et la clarté du projet  

---

# Le fonctionnement global

1. Le code vit dans un **repo**  
2. Tu modifies ton code localement  
3. Tu ajoutes les fichiers : `git add`  
4. Tu valides avec `git commit`  
5. Tu partages et fusionnes ton travail  

---

# Commandes principales

---

## `git status`

Vérifie l’état du projet.

- 🔴 fichier modifié mais non ajouté  
- 🟢 fichier prêt à être commité  

---

## `git add` et `git commit`

git add fichier
git commit -m "feat(core): ajout du module principal"


- `add` prépare le commit  
- `commit` enregistre une version stable  

---

## `git branch` et `git checkout`

Créer, lister ou supprimer des branches.  

git branch
git checkout -b feature-login

undefined

main ----A----B

C (feature-login)

---

## `git rebase` et `git pull --rebase`

Historique propre et linéaire ✅

Avant :
main ----A----B

C----D (feature)

Après :
main ----A----B----C----D
undefined

git pull --rebase origin main


---

## `git log`

Visualiser l’historique des commits.

git log --oneline --graph --all

undefined


    D (feature)
    | * C (feature)
    |/

    B (main)

    A (main)

---

## `git stash`

Sauvegarde temporaire de ton travail non commité.



git stash
git checkout main
git stash pop


---

# Les types de commits (Courteous Convention)

---

## Structure générale

type(scope): description

Exemple :  
`feat(auth): ajout de la connexion via OAuth2`

---

## Types les plus utilisés

- feat : nouvelle fonctionnalité  
- fix : correction de bug  
- docs : modification de documentation  
- style : formatage  
- refactor : réorganisation  
- perf : optimisation  
- test : ajout de tests  
- chore : maintenance  

---

# Exemples concrets

git add fichier1
git commit -m "fix(auth): corrige la gestion des tokens expirés"

git add fichier_doc
git commit -m "docs(auth): améliore la documentation OAuth2"


---

# Bonnes pratiques de commit

- 1 commit = **1 changement cohérent**
- Nomme clairement ton intention  
- Évite les *commits fourre-tout*  
- Commits courts, fréquents, et explicites  

---

# Schéma de bonne pratique

Début projet
|
+-- feat: ajout auth
+-- fix: correction bug login
+-- docs: mise à jour README

Un historique clair = une maintenance facile 🔍

---

# Résumé

✅ Git garde l’historique du code  
✅ Les branches permettent le travail parallèle  
✅ Les commits clairs facilitent la relecture  
✅ Un bon workflow évite les conflits  

---


# Ressources pour s’entraîner

Pour pratiquer Git de façon interactive et visuelle, voici deux excellentes plateformes :

- [Learn Git Branching](https://learngitbranching.js.org/)  
  Un outil visuel très complet avec des exercices en niveaux pour manipuler branches, commits, merges et rebase.  
  Idéal pour bien comprendre visuellement l’ordre des opérations Git.

- [Ekeep-it : exercices Git](https://ekeep-it.github.io/)  
  Plateforme d’entraînement avec des modules progressifs pour pratiquer les commandes Git courantes dans un environnement encadré.

---

# Merci 🙌

N’hésitez pas à explorer ces ressources pour bien maîtriser Git !

Des questions ?  
Testez vos commandes Git sur vos premiers mini-projets !