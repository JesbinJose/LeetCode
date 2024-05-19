class Solution {
  int findPermutationDifference(String s, String t) {
    int res = 0;
    for(int i =0;i<s.length;i++){
      res += (i - t.indexOf(s[i])).abs();
    }
    return res;
  }
}