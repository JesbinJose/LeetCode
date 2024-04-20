class Solution{
  List<List<int>> findFarmland(List<List<int>> land) {
    List<List<int>> farms = [];
    for (int i = 0; i < land.length; i++) {
      for (int j = 0; j < land[i].length; j++) {
        if (land[i][j] == 1) {
          int rowEnd = i, colEnd = j;  
          while (rowEnd < land.length && land[rowEnd ][j] == 1) rowEnd++;
          while (colEnd < land[i].length && land[i][colEnd ] == 1) colEnd++;
          farms.add([i, j, --rowEnd, --colEnd]);
          for (int k = i; k <= rowEnd; k++) for (int l = j; l <= colEnd; l++) land[k][l] = -1;
        }
      }
    }
    return farms;
  }
}