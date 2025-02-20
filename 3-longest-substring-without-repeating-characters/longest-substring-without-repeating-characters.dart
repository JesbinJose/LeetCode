import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    List<int> lastIndex = List.filled(95, -1);
    int maxLen = 0, start = 0;

    for (int end = 0; end < s.length; end++) {
      int index = s.codeUnitAt(end) - 32;
      if(lastIndex[index]>=start){
        start = lastIndex[index] + 1;
      }
      lastIndex[index] = end;
      maxLen = max(maxLen,end - start + 1);
    }

    return maxLen;
  }
}
