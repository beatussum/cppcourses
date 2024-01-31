#include <cstdint>
#include <iostream>

/**
 * @brief Énumération représentant les différents joueurs.
 */

enum class Player : std::uint8_t { Circle, Cross, None };

/**
 * @brief Le type représentant une grille.
 *
 * Chaque case a une valeur correspondante au joueur ayant joué sur la case :
 * - `Player::Circle` si le joueur est celui qui joue les cercles ;
 * - `Player::Cross` si le joueur est celui qui joue les croix ;
 * - `Player::None` si la case n'a pas encore été jouée.
 */

using grid_type = Player[4][4];

/**
* @brief Remplit initialement la grille.
*
* Après appel, `__g` est rempli de `Player::None`.
*
* @param __g La grille à remplir.
*/

void fill_grid(grid_type& __g);

/**
* @brief Imprime la grille sur la sortie standard.
*
* @param __g Une _const-reference_ pointant vers la grille.
*/

void print_grid(const grid_type& __g);

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

/**
* @brief Traite l'entrée utilisateur.
*
* Cette fonction demande à l'utilisateur les coordonnées de la case jouée et
* traite la réponse. Le format utilisé est
* `<indice de ligne>, <indice de colonne>`.
*/

std::pair<std::size_t, std::size_t> parse_input();

int main()
{
    std::cout << "Hello world!" << '\n';
}
