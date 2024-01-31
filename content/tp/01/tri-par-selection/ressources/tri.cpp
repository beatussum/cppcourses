#include <cstdint>
#include <iostream>
#include <random>

using integer_type = std::mt19937::result_type;
using array_type   = integer_type[20];

integer_type get_random_number(integer_type __begin, integer_type __end)
{
    std::random_device device;
    std::mt19937 generator(device());
    std::uniform_int_distribution<integer_type> dist(__begin, __end);

    return dist(generator);
}

void init_random_array(array_type& __array)
{
    for (integer_type& a : __array) {
        a = get_random_number(0, 100);
    }
}

void print_array(const array_type& __array)
{
    for (integer_type a : __array) {
        std::cout << a << ' ';
    }
}

void sort(const array_type& __array) { /* TODO */ }

int main()
{
    array_type array;

    init_random_array(array);
    print_array(array);
    sort(array);
    print_array(array);
}
