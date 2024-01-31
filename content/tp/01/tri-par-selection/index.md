---
title: "Tri par sélection"
weight: 02
---

## Présentation du problème

![Animation de tri par sélection](https://upload.wikimedia.org/wikipedia/commons/b/b0/Selection_sort_animation.gif)

**Le tri par sélection** (ou **tri par extraction**) est un algorithme de **tri par comparaison**. Cet algorithme est simple, mais considéré comme inefficace car il s'exécute en temps quadratique en le nombre d'éléments à trier, et non en temps pseudo linéaire.

En terme de pseudo-code, on a :

```raw
procédure tri_selection(tableau t)
    n ← longueur(t)

    pour i de 0 à n - 2
        min ← i

        pour j de i + 1 à n - 1
            si t[j] < t[min], alors min ← j
        fin pour

        si min ≠ i, alors échanger t[i] et t[min]
    fin pour
fin procédure
```

## Implémentation

À partir du [_template_ suivant](ressources/tri.cpp), implémenter un algorithme de tri par sélection.
