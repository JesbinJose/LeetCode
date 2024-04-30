impl Solution {
    pub fn wonderful_substrings(word: String) -> i64 {
        let mut ans: i64 = 0;
        let mut count = [0i64; 1024];
        count[0] = 1;
        let mut acc: usize = 0;
        for b in word.bytes() {
            let bit: usize = 1 << (b - b'a');
            acc ^= bit;
            ans += count[acc];
            for i in 0..10 {
                ans += count[acc ^ (1usize << i)];
            }
            count[acc] += 1;
        }
        ans
    }
}