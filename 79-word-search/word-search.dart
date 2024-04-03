class Solution {
  late List<List<String>> board;
  late String word;
  late int m, n, s;

  bool search(int x, int y, int step) {
    if ((x < 0) || (y < 0) || (x == m) || (y == n) ||
        (board[x][y] != word[step]))
            return false;
    if (++step == s)
        return true;
    
    final c = board[x][y];
    board[x][y] = '';
    final result = search(x + 1, y, step) || search(x - 1, y, step) ||
        search(x, y + 1, step) || search(x, y - 1, step);
    board[x][y] = c;
    
    return result;
  }
  
  bool exist(List<List<String>> board, String word) {
    this.board = board;
    this.word = word;
    m = board.length;
    n = board.first.length;
    s = word.length;

    for (int i = 0; i != this.m; i++)
        for (int j = 0; j != this.n; j++)
            if (search(i, j, 0))
                return true;
    
    return false;
  }
}