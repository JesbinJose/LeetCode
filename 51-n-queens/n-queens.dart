class Solution {
  List<List<String>> solveNQueens(int n) {
    List<List<String>> res = [];
    List<int> temp = List.filled(n,-1);
    bool isValidPos(int col,int row){
      if(temp[col]!=-1)return false;
      int leftDia = row - col;
      int rightDia = row + col;
      for(var (i,e) in temp.indexed)
        if(e!=-1)if(e+i==rightDia||e-i==leftDia)return false;
      return true;
    }
    void solve(int pos){
      if(pos==n){
        List<String> subRes = List.filled(n,'');
        for(var (i,e) in temp.indexed)
          for(int k = 0 ; k < n ; k++) subRes[e] += k==i?'Q':'.';
        res.add(subRes);
        return;
      }
      for(int i=0;i<n;i++)
        if(isValidPos(i,pos)){
          temp[i]=pos;
          solve(pos+1);
          temp[i]=-1;
        }
    }

    solve(0);
    return res;
  }
}