class Solution {
  List<String> generateParenthesis(int n) {
    final List<String> res = [];
    n*=2;
    void rec(String str,int open,int close){
      if(close>open)return;
      if(open+close==n&&open==close)res.add(str);
      if(open+close>n)return;
      rec('$str(',open+1,close);
      rec('$str)',open,close+1);
    }
    rec('',0,0);
    return res;
  }
}