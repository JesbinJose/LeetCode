import 'dart:math';

class Solution {
  int longestIdealString(String s, int k) {
    final List<int> lastPos = List.filled(26, -1);
    final List<int> dp = List.filled(s.length, 0);
    int maxLen = 0;
    for (int i = 0; i < s.length; i++) {
      final int c = s.codeUnitAt(i) - 97;
      dp[i] = 1;
      for (int j = 0; j < 26; j++) if ((c - j).abs() <= k && lastPos[j] != -1) 
        dp[i] = max(dp[i], dp[lastPos[j]] + 1);
      lastPos[c] = i;
      maxLen = max(maxLen, dp[i]);
    }

    return maxLen;
  }
}