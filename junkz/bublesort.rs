#![allow(unused, dead_code)]

use std::mem::swap;

fn main() {
    let mut vec = vec![5, 1, 9, 4, 6, 7, 3];
    println!("{:?}", vec);
    bublesort(&mut vec);
    println!("{:?}", vec);
}

fn bublesort<T: std::fmt::Debug + std::cmp::PartialOrd>(data: &mut [T]) {
    let len = data.len();
    for _ in 0..len {
        for i in 0..len - 1 {
            if data[i] > data[i + 1] {
                data.swap(i, i + 1);
            }
        }
    }
}
