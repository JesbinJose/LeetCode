class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> map = {};
    for(int i = 0;i<nums.length;i++){
        if(map[nums[i]] != null) return [map[nums[i]]!,i];
        int rem = target - nums[i];
        map[rem] = i;
    }
    return [];
  }
}