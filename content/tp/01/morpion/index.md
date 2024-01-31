---
title: "Morpion"
weight: 00
---

## Présentation du problème

![Plateau de morpion (_11,10,5-game_)](https://upload.wikimedia.org/wikipedia/commons/9/91/Tic-tac-toe_5.png)

L'objectif de ce problème va être d'implémenter un jeu connu de tous : **le morpion**.

On va tenter d'être un peu plus intelligent et implémenter un morpion dont **les trois paramètres** caractérisant le jeu sont modulables :
- **la taille de la grille**,
- ainsi que **le nombre de pion à aligner pour gagner**.

## Analyse du problème

On peut proposer, pour commencer, [le _template_ suivant](ressources/morpion.cpp).

### Introduction des types de base

{{% notice info %}}
Un `enum class` est un type ayant un nombre de valeurs possibles et nommées limité. En d'autres termes, chaque constante définit au sein de cette énumération a une valeur numérique sous-jacente. Dans le cas ci-dessous, elle est encodé sur un `std::uint8_t`.
{{% /notice %}}

Pour bien structurer notre code, on va introduire l'énumération suivante :

```cpp
/**
 * @brief Énumération représentant les différents joueurs.
 */

enum class Player : std::uint8_t { Circle, Cross, None };
```

On va également introduire le type suivant :

```cpp
/**
 * @brief Le type représentant une grille.
 *
 * Chaque case a une valeur correspondante au joueur ayant joué sur la case :
 * - `Player::Circle` si le joueur est celui qui joue les cercles ;
 * - `Player::Cross` si le joueur est celui qui joue les croix ;
 * - `Player::None` si la case n'a pas encore été jouée.
 */

using grid_type = Player[4][4];
```

### Interaction avec la grille

{{% notice info %}}
Le mot-clef `const` signifie que la variable est immutable : on ne donc peut pas la modifier.
{{% /notice %}}

{{% notice info %}}

`<type>&` a pour type **une référence vers un `type`**.

Dans un premier temps, on pourra approximer la notion de référence **en C++** par celle qui existe **en Python**.

Par exemple, que va-t-il se passer dans l'exemple ci-dessous :

```cpp
#include <cstdint>
#include <iostream>

void add_one_by_value(std::uint16_t __i)
{
    __i += 1;
    std::cout << "In `add_one_by_value()`: " << i << '\n';
}

void add_one_by_ref(std::uint16_t& __i)
{
    __i += 1;
    std::cout << "In `add_one_by_ref()`: " << i << '\n';
}

int main()
{
    std::uint16_t i = 0;

    std::cout << i << '\n';
    std::cout << add_one_by_value(i) << '\n';
    std::cout << "After `add_one_by_value`(): " << i << '\n';
    std::cout << add_one_by_ref(i) << '\n';
    std::cout << "After `add_one_by_ref`(): " << i << '\n';
}
```

{{% /notice %}}

1. On veut, avant de commencer, on veut que la grille soit dans une certaine configuration. Implémenter la fonction dont le prototype est le suivant :

    ```cpp
    /**
    * @brief Remplit initialement la grille.
    *
    * Après appel, `__g` est rempli de `Player::None`.
    *
    * @param __g La grille à remplir.
    */

    void fill_grid(grid_type& __g);
    ```

2. Au fur et à mesure du remplissage, on veut afficher la grille pour pouvoir suivre son évolution. Implémenter la fonction dont le prototype est le suivant :

    ```cpp
    /**
    * @brief Imprime la grille sur la sortie standard.
    *
    * @param __g Une _const-reference_ pointant vers la grille.
    */

    void print_grid(const grid_type& __g);
    ```

3. On veut fournir une interface facile à utiliser pour altérer la grille. Implémenter la fonction dont le prototype est le suivant :

    ```cpp
    /**
    * @brief Joue un coup.
    *
    * @param __g Une référence sur la grille.
    * @param __i L'indice de la ligne de la case considérée.
    * @param __j L'indice de la colonne de la case considérée.
    * @param __p Le joueur qui joue le coup.
    *
    * @return `true` si le coup est valide ; `false` sinon.
    */

    bool play(grid_type& __g, std::size_t __i, std::size_t __j, Player __p);
    ```

4. Il faut également être capable de déterminer le statut de la grille. Implémenter la fonction dont le prototype est le suivant :

    ```cpp
    /**
    * @brief Détermine le joueur gagnant.
    *
    * @param __g La grille étudiée.
    *
    * @return Le joueur gagnant ou `Player::None` si la grille n'est pas
    * gagnante.
    */

    Player get_winner(const grid_type& __g);

    /**
    * @brief Détermine si la grille est gagnante.
    *
    * @param __g La grille étudiée.
    * @return `true` si la grille est gagnante ; `false` sinon.
    */

    bool is_won(const grid_type& __g);
    ```

5. Il faut être capable de traiter les entrées utilisateurs. Implémenter la fonction dont le prototype est le suivant :

    ```cpp
    /**
    * @brief Traite l'entrée utilisateur.
    *
    * Cette fonction demande à l'utilisateur les coordonnées de la case jouée et
    * traite la réponse. Le format utilisé est
    * `<indice de ligne>, <indice de colonne>`.
    */

    std::pair<std::size_t, std::size_t> parse_input();
    ```

### Ce n'était que le début !

À l'aide des fonctions précédentes, implémenter en entier le programme.
