class Solution {
  void sortColors(List<int> nums) {
    for(int i=0,l = nums.length,r=0,b=0;i<l;i++){
      if(nums[i]==0){
        nums[i] = 1;
        nums[r++]=0;
      }else if(nums[i]==2){
        nums[i--]=nums[--l];
        nums[l]=2;
      }
    }
  }
}