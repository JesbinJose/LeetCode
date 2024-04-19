class Solution {
  int numIslands(List<List<String>> grid) {
    if (grid.isEmpty) return 0;
    int res = 0;
    for (int i = 0; i < grid.length; i++)
      for (int j = 0; j < grid[i].length; j++)
        if (grid[i][j] == "1") {
          res++;
          dfs(grid, i, j);
        }
    return res;
  }
  
  void dfs(List<List<String>> grid, int row, int col) {
    if (row < 0 || col < 0 || row >= grid.length || col >= grid[row].length || grid[row][col] == "0") return;
    grid[row][col] = "0"; 
    dfs(grid, row + 1, col); 
    dfs(grid, row - 1, col); 
    dfs(grid, row, col + 1); 
    dfs(grid, row, col - 1); 
  }
}
