class Solution {
  private int[] memo;
  public int fib(int n) {
    memo = new int[n + 1];
    return fibHelper(n);
  }
  private int fibHelper(int n) {
    if (n < 2) return n;
    if (memo[n] != 0) return memo[n];
    memo[n] = fibHelper(n - 1) + fibHelper(n - 2);
    return memo[n];
  }
}
