class Solution {
  int balancedStringSplit(String s) {
    int count = 0;
    int res = 0;
    for(String str in s.split('')){
      str == "R" ? count++ : count--;
      if(count == 0) res++;
    }
    return res;
  }
}