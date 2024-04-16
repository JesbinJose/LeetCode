class Solution {
  void rotate(List<List<int>> matrix) {
    int l = matrix.length~/2;
    for(int i =0;i<l;i++){
      int k = matrix.length-i-1;
      for(int j=i;j<k;j++){
        final int m = matrix.length-j-1;
        final int temp =matrix[i][j];
        matrix[i][j]= matrix[m][i];
        matrix[m][i]=matrix[k][m];
        matrix[k][m]=matrix[j][k];
        matrix[j][k]=temp;
      }
    }
  }
}