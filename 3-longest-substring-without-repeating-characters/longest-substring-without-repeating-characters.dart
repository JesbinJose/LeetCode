import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> freq = {};
    int maxLen = 0, start = 0;

    for (int end = 0; end < s.length; end++) {
      if (freq.containsKey(s[end]) && freq[s[end]]! >= start) {
        start = freq[s[end]]! + 1;
      }
      freq[s[end]] = end;
      maxLen = max(maxLen, end - start + 1);
    }

    return maxLen;
  }
}
