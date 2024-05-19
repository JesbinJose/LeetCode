impl Solution {
    pub fn sum_of_multiples(n: i32) -> i32 {
        let mut res: i32 = 0;
        for i in 0..=n {
            if i % 3 == 0 || i % 5 == 0 || i % 7 == 0 {
                res+=i;
            }
        }
        res
    }
}