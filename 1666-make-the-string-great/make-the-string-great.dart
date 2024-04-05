class Solution {
  String makeGood(String s) {
    for(int p = 0;p < s.length - 1;p++) 
        if (s[p].toUpperCase() == s[p + 1] && s[p] != s[p + 1]||s[p] == s[p + 1].toUpperCase() && s[p] != s[p + 1]) {
            s = s.replaceFirst('${s[p]}${s[p + 1]}', '');
            p = - 1;
        } 
    return s;
  }
}