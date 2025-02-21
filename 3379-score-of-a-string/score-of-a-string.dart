class Solution {
  int scoreOfString(String s) {
    int ans = 0;
    for(int i = 1;i<s.length;i++){
        ans += (s.codeUnitAt(i-1) - s.codeUnitAt(i)).abs();
    }
    return ans;
  }
}