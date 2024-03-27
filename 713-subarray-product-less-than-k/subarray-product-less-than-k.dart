class Solution {
  int numSubarrayProductLessThanK(List<int> nums, int k) {
    int count = 0;
    int product = 1;
    int start = 0;
    for (int end = 0; end < nums.length; end++) {
      product *= nums[end];
      while (start <= end && product >= k) {
        product ~/= nums[start++];
      }
      count += end - start + 1;
    }
    return count;
  }
}
