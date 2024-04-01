class Solution {
  int lengthOfLastWord(String s) {
    return s.split(" ").where((str) => str.trim().isNotEmpty).last.length;
  }
}