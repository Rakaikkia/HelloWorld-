U0 SayHello() {
            "Hello World!\n";
}

U0 Main() {
            try {
                        SayHello();
            } catch {
                        "Error: %s\n", Fs->except_ch;
            }
}
Main;
