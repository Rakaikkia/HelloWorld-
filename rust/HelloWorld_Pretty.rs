use std::panic;

fn say_hello() {
            println!("Hello World!");
}

fn main() {
            let result = panic::catch_unwind(|| {
                        say_hello();
            });
            match result {
                        Ok(_) => (),
                        Err(err) => {
                                    eprintln!("Error: {:?}", err);
                                    std::process::exit(1);
                        }
            }
}
