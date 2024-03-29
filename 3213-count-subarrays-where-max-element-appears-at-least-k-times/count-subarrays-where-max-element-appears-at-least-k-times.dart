class Solution {
  int countSubarrays(List<int> nums, int k) {
    int maxValue = 0,res = 0;
    for(int i in nums) maxValue = max(i,maxValue);
    for(int i =0,j=0,count = 0;i<nums.length;i++){
      if(nums[i]==maxValue)count++;
      for(;count>=k;j++){
        res += nums.length-i;
        if(nums[j]==maxValue)count--;
      }
    }
    return res;
  }
}