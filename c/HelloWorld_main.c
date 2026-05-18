/**
 * @file   HelloWorld_Main.c
 * @brief  Print "Hello World!" to stdout with error checking.
 * @return 0 on success, 1 on failure.
 */

#include <stdio.h>
#include <stdlib.h>

int safe_print_hello(void) {
            clearerr(stdout);

            int result = printf("Hello World!\n");
            if (result < 0 || ferror(stdout)) {
                        fprintf(stderr, "ERROR: stdout write failed\n");
                        return 0;  // failure
            }
            return 1;              // success
}

int main(void) {
            if (!safe_print_hello()) {
                        return EXIT_FAILURE;
            }
            return EXIT_SUCCESS;
}
