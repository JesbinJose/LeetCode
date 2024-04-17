class Solution {
  int scoreOfString(String s) {
    int res = 0 , pre = s.codeUnitAt(0);
    for(int i =1;i<s.length;i++){
      int cur = s.codeUnitAt(i);
      res += (pre-cur).abs();
      pre = cur;
    }
    return res;
  }
}