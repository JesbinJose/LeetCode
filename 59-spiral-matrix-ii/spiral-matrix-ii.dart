class Solution {
  List<List<int>> generateMatrix(int n) {
    final List<List<int>> matrix = List.generate(n, (_) => List.filled(n, 0));
    int num = 1;
    int top = 0, bottom = n - 1, left = 0, right = n - 1;
    n*=n;
    while (num <= n) {
      for (int i = left; i <= right; i++) matrix[top][i] = num++;
      for (int i = ++top; i <= bottom; i++) matrix[i][right] = num++;
      for (int i = --right; i >= left; i--) matrix[bottom][i] = num++;
      for (int i = --bottom; i >= top; i--) matrix[i][left] = num++;
      left++;
    }
    return matrix;
  }
}