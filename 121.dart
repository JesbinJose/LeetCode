import 'dart:math';

class Solution {
  int maxProfit(List<int> p) {
    int sm = p[0];
    int sum = 0;
    for(int i=1;i<p.length;i++)
      if(sm>p[i])sm = p[i]; 
      else sum = max(sum,p[i]-sm);
    return sum;
  }
}