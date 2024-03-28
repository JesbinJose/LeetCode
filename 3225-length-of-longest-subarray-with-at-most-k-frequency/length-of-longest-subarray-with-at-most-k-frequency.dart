class Solution {
  int maxSubarrayLength(List<int> nums, int k) {
    Map<int, int> freq ={};
    var l = 0;
    var maxi = 0;
    for (int r = 0; r < nums.length; r++) {
      for (freq[nums[r]] = (freq[nums[r]] ?? 0) + 1;freq[nums[r]]! > k;l++) 
        if ((freq[nums[l]] = freq[nums[l]]! - 1) == 0) freq.remove(nums[l]);
      maxi = max(r - l + 1,maxi);
    }
    return maxi;
  }
}