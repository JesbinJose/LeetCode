class Solution {
  public int numSubarraysWithSum(int[] nums, int goal) {
    int res = 0;
    int sum = 0;
    int prefixSum[] = new int[nums.length + 1];
    prefixSum[0] = 1;
    for (int num : nums) {
      sum += num;
      if (sum >= goal) res += prefixSum[sum - goal];
      prefixSum[sum]++;
    }
    return res;
  }
}