class Solution{
  List<List<int>> largestLocal(List<List<int>> grid) {
    final n = grid.length;
    List<List<int>> maxLocal = List.generate(n - 2, (_) => List.filled(n - 2, 0));
    for (int i = 1; i < n - 1; i++) {
      for (int j = 1; j < n - 1; j++) {
        int maxVal = grid[i][j];
        for (int x = i - 1; x <= i + 1; x++)
          for (int z = j - 1; z <= j + 1; z++)
            maxVal = max(maxVal, grid[x][z]);
        maxLocal[i - 1][j - 1] = maxVal;
      }
    }
    return maxLocal;
  }
}