class Solution {
  int totalNQueens(int n) {
    int res = 0;
    List<int> temp = List.filled(n,-1);
    bool isValid(int row,int col){
      if(temp[col]!=-1) return false;
      int leftDia = row - col;
      int rightDia = row + col; 
      for(var (i,k) in temp.indexed)
        if(k!=-1) if(k+i==rightDia||k-i==leftDia) return false;
      return true;
    }
    void solve(int pos){
      if(pos==n) res++;
      else{
        for(int i=0;i<n;i++){
          if(isValid(pos,i)){
            temp[i] = pos;
            solve(pos+1);
            temp[i] = -1;
          }
        }
      }
    }
    solve(0);
    return res;
  }
}