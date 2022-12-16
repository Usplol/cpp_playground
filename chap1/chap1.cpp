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
    int depth{};
    [[maybe_unused]] int x {5};

    std::cout << "width: " << width << " height: " << height << " depth: " << depth << std::endl;
    return 0;
}
