impl Solution {
    pub fn find_rotate_steps(ring: String, key: String) -> i32 {
        let key = key.chars().into_iter().collect::<Vec<char>>();
        let ring = ring.chars().into_iter().collect::<Vec<char>>();

        let (m, n) = (key.len(), ring.len());
        let mut dp = vec![vec![i32::MAX; n]; m]; 

        for j in 0 .. n { 
            if ring[j] != key[0] { continue }
            dp[0][j] = j.min(n - j)  as i32 + 1; 
        }

        for i in 1 .. m {
            for j in 0 .. n {
                if ring[j] != key[i] { continue }

                for k in 0 .. n {
                    if ring[k] != key[i - 1] { continue }

                    let (u, v) = (j.max(k), j.min(k));
                    let temp = (u - v).min(v + n - u) as i32;

                    dp[i][j] = dp[i][j].min(dp[i - 1][k] + temp + 1);
                }
            }
        }

        *dp[m - 1].iter().min().unwrap()
    }
}