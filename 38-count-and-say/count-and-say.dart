class Solution {
  String countAndSay(int n) {
    if (n == 1) return "1";
    String res = '11';
    for (int i = 2; i < n; i++) {
      String temp = "";
      int count = 1;
      int lastIndex = 0;
      for (int j = 1; j < res.length; j++, lastIndex = j) {
        if (res[j - 1] == res[j]) count++;
        else {
          temp += count.toString() + res[j - 1];
          count = 1;
        }
      }
      res = '$temp$count${res[lastIndex-1]}';
    }
    return res;
  }
}