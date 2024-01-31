import 'dart:math';

class Solution {
  int maxProduct(List<int> nums) {
    int cMax = nums[0] , cMin = nums[0], r = nums[0];
    for (int n in nums.sublist(1)) {
      int temp = cMin ;
      cMin = min(n, min(cMax * n, cMin * n));
      cMax = max(n, max(cMax * n, temp * n));
      r = max(r, cMax);
    }
    return r;
  }
}
