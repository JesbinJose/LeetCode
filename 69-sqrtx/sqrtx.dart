class Solution {
  int mySqrt(int x) {
    int res = 1;
    while(res*res <= x)res++;
    return res-1;
  }
}