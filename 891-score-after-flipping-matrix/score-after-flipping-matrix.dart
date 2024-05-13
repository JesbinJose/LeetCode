import "dart:math";

class Solution {
  int matrixScore(List<List<int>> grid) {
    int m =grid.length,n=grid[0].length;
    for(int i = 0;i<m;i++) if(grid[i][0]==0) changeRow(grid[i]);
    int res = m * pow(2, n) as int;
    for(int i = 1 ; i < n ; i++){
      int oneCount = 0,zeroCount = 0;
      for(int j = 0 ; j < m ; j++) grid[j][i] == 1 ? oneCount++ : zeroCount++;
      res += max(oneCount,zeroCount) * pow(2,n-i) as int;
    }
    return res~/2;
  }
  void changeRow(List<int> nums) {for(var (i,v) in nums.indexed)nums[i] = v == 0 ? 1 : 0;}
}