class Solution {
  int removeDuplicates(List<int> nums) {
    int pre = -100000,res = 0;
    bool cu = false;
    for(int i in nums){
      if(cu && pre==i)continue;
      cu = pre==i;
      pre = i;
      nums[res++] = i;
    }
    return res;
  }
}