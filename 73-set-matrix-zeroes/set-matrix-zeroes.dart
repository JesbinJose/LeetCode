class Solution {
  void setZeroes(List<List<int>> matrix) {
    final List<int> zeroList = List.filled(matrix[0].length,0);
    final Set<int> verSet = {};
    final Set<int> horSet = {};
    for(int i=0;i<matrix.length;i++)
      for(int j=0;j<matrix[i].length;j++)
        if(matrix[i][j]==0){
          verSet.add(j);
          horSet.add(i);
        }
    for(int i in horSet) matrix[i]=zeroList;
    for(List<int> cur in matrix) for(int i in verSet) cur[i]=0;
  }
}