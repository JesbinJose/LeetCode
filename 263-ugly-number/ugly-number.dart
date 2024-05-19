class Solution {
  bool isUgly(int n) {
    if (n <= 0) return false;

    const divisors = [2, 3, 5];
    
    for (var divisor in divisors) {
      while (n % divisor == 0) {
        n ~/= divisor;
      }
    }
    
    return n == 1;
  }
}