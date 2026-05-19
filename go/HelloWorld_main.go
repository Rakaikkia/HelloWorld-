package main
import (
            "fmt"
            "os"
)

func safePrintHello() error {
            _, err := fmt.Println("Hello World!")
            if err != nil {
                        return fmt.Errorf("output error: %w", err)
            }
            return nil
}

func main() {
            if err := safePrintHello(); err != nil {
                        fmt.Fprintln(os.Stderr, err)
                        os.Exit(1)
            }
}
