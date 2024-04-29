impl Solution {
    pub fn min_operations(nums: Vec<i32>, k: i32) -> i32 {
        let mut xor_res: i32 = k;
        let mut res: i32 = 0;
        for n in nums {
            xor_res ^= n;
        }
        while xor_res > 0 {
            if xor_res & 1 == 1 {
                res += 1;
            }
            xor_res >>= 1;
        }
        res
    }
}