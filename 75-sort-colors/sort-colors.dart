class Solution {
  void sortColors(List<int> nums) {
    for(int i=0,r=0,b=nums.length-1;i<=b;i++){
      if(nums[i]==0){
        nums[i] = 1;
        nums[r++]=0;
      }else if(nums[i]==2){
        nums[i--]=nums[b];
        nums[b--]=2;
      }
    }
  }
}