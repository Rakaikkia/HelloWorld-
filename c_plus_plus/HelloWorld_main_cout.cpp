/**
 * @file   HelloWorld_main_cout.cpp
 * @brief  Print "Hello World!" to stdout using std::cout.
 * @return 0 on success, 1 on failure.
 */

#include <iostream>
#include <exception>

[[nodiscard]] bool hello_world() noexcept {
            // Enable exceptions on std::cout so that any error becomes a catchable exception.
            std::cout.exceptions(std::ios::badbit | std::ios::failbit);

            try {
                        std::cout << "Hello World!" << std::endl;
            } catch (const std::ios_base::failure& ex) {
                        std::cerr << "ERROR: " << ex.what() << std::endl;
                        return false;   // signal failure
            }
            return true;                // success
}

[[nodiscard]] int main() noexcept {
            if (!hello_world()) return 1;
            return 0;
}
