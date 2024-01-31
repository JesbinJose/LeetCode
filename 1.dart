//class Solution {
//  List<int> twoSum(List<int> nums, int target) {
//    for(int i = 0;i < nums.length;i++)
//      for(int j = i+1;j<nums.length;j++)
//        if(nums[i]+nums[j]==target) return [i,j];
//    return [0,0];
//  }
//}
class Solution {
  List<int> twoSum(List<int> nums, int target) {
      Map<int, int> hash = {nums[0]:0};
      for(var i=1;i<nums.length;i++){
          int com = target - nums[i];
          if (hash[com]!=null) return [hash[com]!, i];
          hash[nums[i]] = i;
      }
      return [];
  }
}