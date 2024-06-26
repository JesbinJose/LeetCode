class Solution {
  bool exist(List<List<String>> board, String word) {
    bool rec(int row, int column, int index) {
      if (index >= word.length) return true;
      if (row < 0 || row >= board.length || column < 0 || column >= board[row].length) return false;
      if (board[row][column] != word[index]) return false;
      final String original = board[row][column];
      board[row][column] = ''; 
      bool found = rec(row + 1, column, index + 1) ||
          rec(row, column + 1, index + 1) ||
          rec(row - 1, column, index + 1) ||
          rec(row, column - 1, index + 1);
      board[row][column] = original; 
      return found;
    }
    
    for (int i = 0; i < board.length; i++) 
      for (int j = 0; j < board[i].length; j++) 
        if (board[i][j] == word[0] && rec(i, j, 0)) return true;
    return false;
  }
}
