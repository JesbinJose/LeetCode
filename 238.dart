class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int ts = 1;
    bool cz = false;
    for(int n in nums) 
    if(n!=0)ts*=n;
    else if (cz) return List.filled(nums.length,0);
    else cz = true;
    return List.generate(nums.length,(i)=>cz?(nums[i]!=0?0:ts):ts~/nums[i]);
  }
}