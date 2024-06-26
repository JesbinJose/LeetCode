class Solution {
  int minFallingPathSum(List<List<int>> grid) {
    final int n = grid.length;
    final List<List<int>> dpTable = List.generate(n, (_) => List.filled(n, 100000000000));
    for (int i = 0; i < n; i++) dpTable[n - 1][i] = grid[n - 1][i];
    for (int row = n - 2; row >= 0; row--) 
      for (int col = 0; col < n; col++) {
        int minSum = 100000000000;
        for (int nextCol = 0; nextCol < n; nextCol++) 
          if (nextCol != col) minSum = min(minSum, dpTable[row + 1][nextCol]);
        dpTable[row][col] = grid[row][col] + minSum;
      }
    int minPathSum = dpTable[0][0];
    for (int i = 1; i < n; i++) minPathSum = min(minPathSum, dpTable[0][i]);
    return minPathSum;
  }
}
