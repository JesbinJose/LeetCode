class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int helper( int i, int j) {
      if (i < 0 || i >= grid.length || j < 0 || j >= grid[0].length || grid[i][j] == 0) return 1; 
      if (grid[i][j] == -1) return 0;
      grid[i][j] = -1;
      return helper(i + 1, j) + helper(i - 1, j) + helper(i, j + 1) + helper(i, j - 1);
    }

    int row = grid.length;
    int col = grid[0].length;
    for (int i = 0; i < row; i++) {
      int index = grid[i].indexOf(1);
      if (index!=-1) return helper(i, index);
    }
    return 0;
  }
  
}