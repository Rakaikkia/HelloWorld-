#include <iostream>

int main() {
            auto helloworld = []() {std::cout << "Hello World!" << std::endl;};

            helloworld();
            return 0;
}
