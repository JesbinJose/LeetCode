impl Solution {
    pub fn find_permutation_difference(s: String, t: String) -> i32 {
        let mut res: i32 = 0;
        for (i,v) in s.chars().enumerate() {
            if let Some(index) = t.find(v) {
                res += ((i - index)as i32).abs();
            } 
        }
        res
    }
}