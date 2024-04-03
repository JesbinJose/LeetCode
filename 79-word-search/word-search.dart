class Solution {
  bool exist(List<List<String>> board, String word) {
    bool rec(int row,int column,int index,Map<String,bool?> map){
      if(index>=word.length) return true;
      if(0>row||row>=board.length||0>column||column>=board[0].length)return false;
      if(board[row][column]!=word[index] || map['$row,$column']!=null)return false;
      map['$row,$column'] = true;
      final bool res = rec(row+1,column,index+1,map) || rec(row,column+1,index+1,map) || rec(row-1,column,index+1,map) || rec(row,column-1,index+1,map);
      map['$row,$column'] = null;
      return res;
    }
    for(int i =0;i<board.length;i++)
      for(int j =0;j<board[i].length;j++)
        if(board[i][j]==word[0]&&rec(i,j,0,{})) return true;
    return false;
  }
}