#include <iostream>
class Print_Message {private: const char text[15] = {72, 101, 108,
108, 111, 32, 87, 111, 114, 108, 100, 33, 10, 13, 0}; public: void
helloworld() {for (char a: text) {std::cout << a;}}}; int main() {
Print_Message Message_prog; ;Message_prog.helloworld(); return 0;}
