class Solution {
  int lengthOfLastWord(String s) => s.split(" ").where((str) => str.trim().isNotEmpty).last.length;
}