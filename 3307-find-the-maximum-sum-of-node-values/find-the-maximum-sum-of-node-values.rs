use std::cmp::{min, max};

impl Solution {
    pub fn maximum_value_sum(nums: Vec<i32>, k: i32, _: Vec<Vec<i32>>) -> i64 {
        let (mut d, mut count, mut sum) = (i32::MAX, 0, 0i64);
        
        for &n in &nums {
            let b = n ^ k;
            sum += max(b, n) as i64;
            
            if b > n {
                count ^= 1;
            }
            
            d = min(d, (n - b).abs());
        }
        
        return (sum - (d as i64) * (count as i64));
    }
}
