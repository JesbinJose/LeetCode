impl Solution {
    pub fn add_digits(mut num: i32) -> i32 {
        while num > 9 {
            num = num % 10 + num / 10;
        }
        num
    }
}