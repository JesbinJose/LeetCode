import 'dart:math';

class Solution {
  int maxSubArray(List<int> nums) {
    int m = nums[0];
    int cs = 0;
    for(int i in nums){
      if(cs<0) cs = 0;
      cs += i;
      m = max(m,cs); 
    }
    return m;
  }
}