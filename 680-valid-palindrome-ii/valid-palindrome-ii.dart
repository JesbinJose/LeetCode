class Solution {
  bool validPalindrome(String s) {
    for (int l = -1,r = s.length;++l < --r;) 
      if (s[l] != s[r]) return isPalindrome(s, l , r+1) || isPalindrome(s, l-1, r);
    return true;
  }
  bool isPalindrome(String s, int start, int end) {
    while (++start < --end) if (s[start] != s[end]) return false;
    return true;
  }
}