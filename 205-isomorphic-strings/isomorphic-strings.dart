class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String,String> map = {};
    for(int i=0;i<s.length;i++)
      if(map[s[i]] == null) map[s[i]] = t[i];
      else if(map[s[i]] != t[i])return false;
    map.clear();
    for(int i=0;i<s.length;i++)
      if(map[t[i]] == null) map[t[i]] = s[i];
      else if(map[t[i]] != s[i])return false;
    return true;
  }
}