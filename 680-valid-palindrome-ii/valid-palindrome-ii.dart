class Solution {
  bool validPalindrome(String s) {
    for (int left = -1,right = s.length;++left < --right;) 
      if (s[left] != s[right]) return isPalindrome(s, left , right+1) || isPalindrome(s, left-1, right );
    return true;
  }
  bool isPalindrome(String s, int start, int end) {
    while (++start < --end) if (s[start] != s[end]) return false;
    return true;
  }
}