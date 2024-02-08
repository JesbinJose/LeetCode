class Solution {
  int numSquares(int n) {
      final List<int> dp = List.filled(n + 1, n);
      dp[0] = 0;
      for (int i = 1; i <= n; i++){
        int k = 1;
        for (int j = 1; k <= i; j++) {
          final x = dp[i-k]+1;
          dp[i] = min(dp[i],x);
          k=j*j;
        }
      }
      return dp[n];
  }
}