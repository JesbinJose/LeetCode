class Solution {
  int maximalRectangle(List<List<String>> matrix) {
    List<List<int>> dp = [];
    dp.add(List.filled(matrix[0].length + 1, 0));
    matrix.forEach((element) {
      dp.add(List.generate(element.length + 1, (index) => 0));
    });
    for (int i = 1; i <= matrix.length; i++) 
      for (int j = 1; j <= matrix[0].length; j++) 
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1] - dp[i - 1][j - 1] + int.parse(matrix[i - 1][j - 1]);
    int res = 0;
    for (int i = 1; i < dp.length; i++) {
      for (int j = 1; j < dp[i].length; j++) {
        if (matrix[i - 1][j - 1] == '0') continue;
        for (int k = j; k < dp[i].length; k++) {
          if (matrix[i - 1][k - 1] == '0') break;
          int l = i;
          int h = dp.length - 1;
          while (l <= h) {
            int mid = (l + h) ~/ 2;
            int squareRecTangle =
                dp[mid][k] + dp[i - 1][j - 1] - dp[mid][j - 1] - dp[i - 1][k];
            if (squareRecTangle < (mid - i + 1) * (k - j + 1)) h = mid - 1;
            else {
              l = mid + 1;
              res = max(res, squareRecTangle);
            }
          }
        }
      }
    }
    return res;
  }
}