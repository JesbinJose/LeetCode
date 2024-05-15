class Solution {
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    int m = mat.length , n = mat[0].length, total = m * n;
    if(r * c != total) return mat;
    List<List<int>> ans = List.generate(r, (_) => List.filled(c,0));
    for(int i = 0; i < total; i++) ans[i ~/ c][i % c] = mat[i ~/ n][i % n];
    return ans;
  }
}