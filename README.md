# Formation C++ 17

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/beatussum/cppcourses/hugo.yaml?branch=master)](https://github.com/beatussum/cppcourses/deployments/github-pages)

## Introduction

Cette formation a débuté pendant **l'année scolaire 2023-2024** et est organisé par [Mattéo Rossillol‑‑Laruelle](mailto:Mattéo%20Rossillol‑‑Laruelle%20<matteo.rossillol--laruelle@grenoble-inp.org>).

## Pourquoi ce site ?

Sur ce site, vous trouverez plusieurs pages vous permettant d'accéder aux différentes resources de chaque cours. En d'autres termes, vous pourrez retrouver :
- les sujets de T.P.,
- les supports de cours,
- et autres annotations.

## Comment est conçu ce site ?

C'est un projet Hugo classique ; pour plus d'information, voir leur documentation [ici](https://gohugo.io/getting-started/directory-structure/).

Pour un rédacteur lambda c'est surtout `content/` et `static/` qui sont intéressants :
- `content/` pour les articles, globalement c'est **1 page pour 1 fichier Markdown**. Toutes les pages sauf l'accueil ont un bouton « Modifier la page » en haut à droite qui vous emmènera sur l'IDE de GitHub avec le bon fichier ouvert.
    - Les pages sont organisées en arbre (voir [ici](https://gohugo.io/content-management/page-bundles/)) :
        - un fichier `truc.md` ou un dossier `truc` avec un `index.md` est une feuille,
        - un dossier `truc` avec un ficher `_index.md` est une branche.

    C'est cette organisation qui est respectée par la navigation !

- `static/` pour les images et autres resources (pas trop lourds !).

Pour les contributeurs plus avancés :
- `layouts/` définit les présentations :
    - `layouts/partials/` définit des bouts de pages réutilisables depuis les autres _layouts_,
    - `layouts/shortcodes/` définit des bouts de code réutilisables depuis les fichiers Markdown se trouvant dans `content/`.

- `hugo.toml` définit tout un tas de paramètres globaux pour le site. Voir [la documentation de Hugo](https://gohugo.io/getting-started/configuration/) et [celle du thème](https://learn.netlify.app/fr/basics/configuration/) pour plus d'information.

## Droits d'auteur

Tous les documents que j'ai personnellement écris (Mattéo Rossillol‑‑Laruelle) sont distribués, sauf en cas de mention contraire, sous licence [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.fr).
