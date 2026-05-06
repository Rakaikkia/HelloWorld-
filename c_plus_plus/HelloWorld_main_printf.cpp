/**
 * @file   HelloWorld_main_printf.cpp
 * @brief  Print "Hello World!" to stdout using printf().
 * @return 0 on success, 1 on failure.
 */

#include <cstdio>

[[nodiscard]] bool hello_world() noexcept
{
            int ret = std::printf("Hello World!\n");
            if (ret < 0)
            {
                        std::fprintf(stderr, "ERROR: printf failed\n");
                        return false;   // signal failure
            }
            return true;                // success
}

[[nodiscard]] int main() noexcept
{
            if (!hello_world()) return 1;
            return 0;
}
