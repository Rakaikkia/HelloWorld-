U0 SafePrintHello() {
            I64 fp = Fs->putc;
            Fs->putc = &PutChars;

            try {
                        "Hello World!\n";
            } catch {
                        "Output error: %s\n", Fs->except_ch;
                        throw;
            }

            Fs->putc = fp;
}

U0 Main() {
            try {
                        SafePrintHello;
            } catch {
                        Exit(1);
            }
}
Main;
