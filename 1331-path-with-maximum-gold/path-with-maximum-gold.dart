class Solution {
  int getMaximumGold(List<List<int>> grid) {
    if (grid.isEmpty) return 0;
    int m = grid.length, n = grid[0].length;
    int res = 0;
    void solve(int x, int y, int gold) {
      res = max(res,gold);
      if (x < 0 || x >= m || y < 0 || y >= n || grid[x][y] == 0) return;
      int temp = grid[x][y];
      gold += temp;
      grid[x][y] = 0;
      solve(x + 1, y, gold);
      solve(x, y + 1, gold);
      solve(x - 1, y, gold);
      solve(x, y - 1, gold);
      grid[x][y] = temp;
    }

    for (int i = 0; i < m; i++) 
      for (int j = 0; j < n; j++)
        if (grid[i][j] != 0)
          solve(i, j, 0);

    return res;
  }
}