#![allow(unused, dead_code)]

fn main() {
    let factors = |nums: u32| {
        let mut result = Vec::new();
        for num in 1..=nums {
            if 0 == nums % num {
                result.push(num);
            }
        }
        result
    };

    println!(
        "{:?}",
        [12, 9, 45, 6, 3, 21, 101, 2121]
            .iter()
            .map(|&n| factors(n))
            .collect::<Vec<_>>()
    );
}
