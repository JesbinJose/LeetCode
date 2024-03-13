class Solution {
  int longestValidParentheses(String s) {
    int res = 0;
    int l = 0;
    int r = 0;
    for (int i = 0; i < s.length; i++) {
      s[i] == '(' ? l++ : r++;
      if (r > l) (l,r)= (0,0);
      else if (l == r) res = max(res , 2 * r);
    }
    l = 0;
    r = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      s[i] == ')'? r++:l++;
      if (l > r) (l,r)= (0,0);
      else if (l == r) res = max(res , (2 * l));
    }
  
  return res;
  }
}