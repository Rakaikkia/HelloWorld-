using System;

class HelloWorld_Main {
            static bool SafePrintHello() {
                        try {
                                    Console.Out.Flush();
                                    Console.WriteLine("Hello World!");
                                    Console.Out.Flush();
                                    return true;
                        } catch (Exception ex) {
                                    Console.Error.WriteLine($"Output error: {ex.Message}");
                                    return false;
                        }
            }

            static int Main() {
                        return SafePrintHello() ? 0 : 1;
            }
}
