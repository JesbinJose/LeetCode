class Solution {
int maxSumAfterPartitioning(List<int> l, int c) {
  int n = l.length;
  List<int> dp = List<int>.filled(n + 1, 0);
  for (int i = 1; i <= n; i++) {
    int curMax = 0;
    for (int k = 1; k <= min(c , i); k++) 
      dp[i] =max(dp[i] , dp[i - k] + (curMax = max(curMax,l[i - k])) * k);
  }
  return dp[n];
}
}