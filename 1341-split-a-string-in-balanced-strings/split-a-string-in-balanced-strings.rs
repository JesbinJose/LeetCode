impl Solution {
    pub fn balanced_string_split(s: String) -> i32 {
        let mut count: i32 = 0;
        let mut res: i32 = 0;
        for ch in s.chars(){
            if ch == 'R' {
                count += 1;
            }else {
                count -= 1;
            }
            if count == 0 {
                res += 1;
            }
        }
        res
    }
}