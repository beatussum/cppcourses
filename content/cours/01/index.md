---
title: "Premier cours"
weight: 01
---

Ce cours a été dispensé **le jeudi 23/11/2023**, **entre 14h et 16h**, dans **l’amphithéâtre D** à **l'ENSIMAG**.

## Le programme étudié

1. Notion de programmation impérative
    1. Syntaxe élémentaire
    2. Afficher en console
    3. Fonction `main()`
2. Définition de variables
    1. Notion de typage
    2. Les alias
    3. Types fondamentaux à l'exception de `std::nullptr_t` (point sur les entiers signés)
    4. Les littéraux
    5. Les tableaux
    6. Initialisation de variables (_default initialization_, _direct initialization_, _list initialization_, _copy initialization_, _value initialization_, _aggregate initialization_ et _reference initialization_) et mot clef `auto`

## Errata

Certaines erreurs et coquilles se sont glissé (je n'assume pas du tout…) dans le support de cours :
- **à la page 32** : un `long` fait au moins quatre octet et un `long long` en fait au moins huit ;

- **à la page 53** : le code utilisé dans l'exemple devrait être le suivant :

    ```cpp
    int a[5] = {1, 2, 3, 4, 5};
    a[10]; // cette ligne est valide
    ```

## Resources

Les différentes resources utilisées pendant ce cours sont les suivantes :
- le support de cours que vous pouvez retrouver [ici](ressources/01.pdf),
- ainsi que son source LaTeX que pouvez retrouver [ici](ressources/01.tex) (il est important de noter qu'il faut compiler ce document avec [XeLaTeX](https://xetex.sourceforge.net/)).
