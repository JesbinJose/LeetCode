impl Solution {
  pub fn tribonacci(n: i32) -> i32 {
    if n == 0 {
      return 0;
    } else if n < 3 {
      return 1;
    }
    let mut t0: usize = 0;
    let mut t1: usize = 1;
    let mut t2: usize = 1;
    let mut tn: usize = 0;

    for _ in 3..=n {
      tn = t0 + t1 + t2;
      t0 = t1;
      t1 = t2;
      t2 = tn;
    }

    return tn as i32;
  }
}