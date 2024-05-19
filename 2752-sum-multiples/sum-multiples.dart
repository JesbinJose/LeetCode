class Solution {
  int sumOfMultiples(int n) {
    int res = 0;
    for(;n>0;n--){
      if(n%3==0) res += n;
      else if (n%5==0) res += n;
      else if (n%7==0) res += n;
    }
    return res;
  }
}