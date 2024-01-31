---
title: "L'âge du capitaine"
---

## Présentation du problème

Dans le port, il y a un très beau bateau ; dans le bateau, il y a un très vieux capitaine ; ou peut-être pas tant que ça…

Votre objectif est de deviner l'âge du capitaine en un minimum d'étape car celui-ci est très susceptible.

Il vous indiquera seulement si votre estimation est trop haute ou trop basse.

## Implémentation

{{% notice info %}}

Pour récupérer des données depuis l'entrée standard, on utilise :

```cpp
#include <iostream>

int main()
{
    char c;
    std::cin >> c;
}
```

{{% /notice %}}

On vous propose de vous appuyer sur [le _template_ suivant](ressources/capitaine.cpp).

Vous jouerez le capitaine : vous choisissez donc son âge entre 0 et 100 ans.

À chaque tour, le programme doit être capable de vous proposer un âge et vous lui répondrez si la réponse est **trop haute**, **trop basse**… ou **correcte** !
