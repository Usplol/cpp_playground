#include <iostream>

/*
Best practice
Favor initialization using braces whenever possible.
Initialize your variables upon creation.

*/


// int main(int argc, char const *argv[])
int main()
{
    int width{5};     // direct brace initialization
    int height = {6}; // copy brace initialization
    int depth{};      // zero initialization
    int x {};
    char y {};

    std::cout << "width: " << width << '\n' << "height: " << height << " depth: " << depth << std::endl;
    std::cout << "enter a number for x" << std::endl;
    std::cin >> x;
    std::cout << "enter a char for y" << std::endl;
    std::cin >> y;

    std::cout << "X entered: " << x <<", y entered: " << y << std::endl;

    
    return 0;
}
