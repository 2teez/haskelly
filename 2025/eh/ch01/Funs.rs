#![allow(unused, dead_code)]

fn main() {
    println!(
        "{:#?}",
        vec![1, 9, 3, 67, 349, 215, 89]
            .iter()
            .filter(|n| is_prime(**n))
            .collect::<Vec<_>>()
    );
}

fn is_prime(num: u32) -> bool {
    match num {
        0 | 1 => false,
        2 | 3 => true,
        _ => {
            let mut n = 2;
            while n < num {
                if 0 == num % n {
                    return false;
                }
                n += 1;
            }
            true
        }
    }
}
