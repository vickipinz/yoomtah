use std::{io::{self, Write}, thread, time};
fn ssssay(s: &str) {
    let a: Vec<char> = s.chars().collect();
    let mut i = 0;
    let (mut j, mut k, mut w) = (0, 0, 0);
    loop {
        if i >= a.len() { break }
        print!("{}", a[i]); io::stdout().flush().unwrap();
        thread::sleep(time::Duration::from_millis(j*1 + 10-w));
        if a[i].is_whitespace() { if w < 3 {
                if j < (if i < 4 {2} else if i < 23 {5} else {3}) {
                    print!("[{}D", i-k); io::stdout().flush().unwrap();
                    j+=1; i=k;
                } else { j=0; k=i; }
                if j == 2 { thread::sleep(time::Duration::from_millis((3-j)*110)); }
            } else { if j < 5 { print!("{}", a[i]); io::stdout().flush().unwrap();
                    i -= 1; }
            } w = 0;
        } else { w += 1; }
        i += 1;
    }
    thread::sleep(time::Duration::from_millis(w*102));
    print!("\n");
}

fn main() -> io::Result<()> {
    ssssay("my mango is to blow up");
    Ok(())
}
