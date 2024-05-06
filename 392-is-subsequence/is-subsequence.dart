class Solution {
  bool isSubsequence(String s, String t) {
    int i =0,j=0;
    while(i<s.length&&j<t.length){
      if(s[i]==t[j++]) i++;
    }
    return s.length == i;
  }
}