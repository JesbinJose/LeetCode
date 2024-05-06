class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 1;
    for(int i = 1; i < nums.length; i++) if(nums[i - 1] != nums[i]) nums[k++] = nums[i];
    return k;
  }
}