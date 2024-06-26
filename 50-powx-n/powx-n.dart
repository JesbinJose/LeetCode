class Solution {
  double myPow(double x, int n) {
    if (n == 0) return 1;
    double res = 1;
    if (n < 0) {
      x = 1 / x;
      n = -n;
    }
    while (n > 0) {
      if (n % 2 == 1) res *= x;
      x *= x;
      n ~/= 2;
    }
    return res;
  }
}
