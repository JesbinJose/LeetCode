class Solution {
  bool checkValidString(String s) {
    int min = 0,max = 0;
    for (int i = 0; i < s.length; i++,) {
      s[i]=="(" ? min++ : min--;
      s[i] == ")" ? max-- : max++;
      if (max < 0) return false;
      if (min < 0) min = 0;
    }

    return min == 0;
  }
}