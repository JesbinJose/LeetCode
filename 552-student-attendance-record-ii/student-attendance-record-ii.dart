class Solution {
  int checkRecord(int n) {
    const int MOD = 1000000007;
    List<List<List<int>>> dp = List.generate(n + 1, (_) => List.generate(2, (_) => List.generate(3, (_) => 0)));
    dp[0][0][0] = 1;
    for (int i = 1; i <= n; i++)
      for (int A = 0; A < 2; A++) 
        for (int L = 0; L < 3; L++){
          dp[i][A][0] = (dp[i][A][0] + dp[i - 1][A][L]) % MOD;
          if (A > 0) dp[i][A][0] = (dp[i][A][0] + dp[i - 1][A - 1][L]) % MOD;
          if (L > 0) dp[i][A][L] = (dp[i][A][L] + dp[i - 1][A][L - 1]) % MOD;
        }
    int result = 0;
    for (int A = 0; A < 2; A++)
      for (int L = 0; L < 3; L++)
        result = (result + dp[n][A][L]) % MOD;
    return result;
  }
}