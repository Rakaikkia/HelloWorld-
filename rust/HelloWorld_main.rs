use std::io::{self, Write};

fn safe_print(msg: &str) -> io::Result<()> {
            let stdout = io::stdout();
            let mut handle = stdout.lock();
            handle.write_all(msg.as_bytes())?;
            handle.write_all(b"\n")?;
            handle.flush()?;
            Ok(())
}

fn main() {
            if let Err(e) = safe_print("Hello World!") {
                        eprintln!("Output error: {}", e);
                        std::process::exit(1);
            }
}
