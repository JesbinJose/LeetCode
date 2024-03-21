class Solution {
  bool isMatch(String s, String p) => s == RegExp(p.replaceAll(RegExp(r'\*{2,}'), '*')).stringMatch(s);
}