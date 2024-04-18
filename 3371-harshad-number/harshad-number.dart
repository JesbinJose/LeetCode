class Solution {
  int sumOfTheDigitsOfHarshadNumber(int x) {
    if( x==100 ) return 1;
    int sum = x%10 + x~/10;
    return x % sum == 0?sum:-1;
  }
}