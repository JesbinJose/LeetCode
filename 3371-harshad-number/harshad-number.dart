class Solution {
  int sumOfTheDigitsOfHarshadNumber(int x) {
    if(x==100) return 1;
    if(x<10) return x;
    int sum = x%10 + x~/10;
    if(x % sum == 0)return sum;
    return -1;
  }
}