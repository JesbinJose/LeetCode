class Solution {
  bool checkValidGrid(List<List<int>> grid) {
    int n = grid.length;
    List<List<int>> moves = [[2, 1],[2, -1],[-2, 1],[-2, -1],[1, 2],[1, -2],[-1, 2],[-1, -2]];
    bool isValidMove(int x, int y,int count) => x >= 0 && x < n && y >= 0 && y < n && grid[x][y]==count;
    bool dfs(int x, int y, int count) {
      if (count == n * n) return true;
      for (var move in moves) {
        int newX = x + move[0];
        int newY = y + move[1];
        if (isValidMove(newX, newY,count)) if (dfs(newX, newY, count + 1)) return true;
      }
      return false;
    }
    if(grid[0][0]!=0) return false;
    return dfs(0, 0, 1); 
  }
}