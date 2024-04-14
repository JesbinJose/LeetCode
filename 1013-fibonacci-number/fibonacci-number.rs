impl Solution {
  pub fn fib(n: i32) -> i32 {
    if n < 2 {
      return n;
    }
    let mut memo = vec![0; (n + 1) as usize];
    memo[0] = 0;
    memo[1] = 1;
    for i in 2..=n as usize{
      memo[i] = memo[i - 1] + memo[i - 2];
    }
    memo[n as usize]
  }
}
