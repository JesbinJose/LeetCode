import 'dart:math';

class Solution {
  int maxArea(List<int> h) {
    int maxA = 0;
    int left = 0;
    int right = h.length-1;
    while(left<right){
      maxA = max((right -left)* min(h[right],h[left]),maxA);
      h[right]<h[left]?right--:left++;
    }
    return maxA;
  }
}