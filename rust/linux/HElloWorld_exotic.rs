#[cfg(target_os = "linux")]
extern "C" {
            fn write(fd: i32, buf: *const u8, count: usize) -> isize;
}

#[cfg(not(target_os = "linux"))]
fn main() {
            println!("Exotic version only works on Linux");
}

#[cfg(target_os = "linux")]
fn main() {
            let msg = b"Hello World!\n";
            unsafe {
                        write(1, msg.as_ptr(), msg.len());
            }
}
